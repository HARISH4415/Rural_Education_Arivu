import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../services/data_service.dart';
import '../utils/responsive.dart';
import '../utils/app_theme.dart';
import 'auth_screen.dart'; // To access ProfilePage if needed or Logout
import 'selection_screens.dart';
import 'activities_screen.dart';

class HomeScreen extends StatefulWidget {
  final int standard;
  final String avatar;

  const HomeScreen({super.key, required this.standard, required this.avatar});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  Map<String, dynamic>? _userData;
  late int _currentStandard;

  @override
  void initState() {
    super.initState();
    _loadUserData();
    DataService.syncOfflineData(); // Auto-sync on home load
  }

  void _loadUserData() {
    final box = Hive.box('studentBox');
    final settingsBox = Hive.box('settingsBox');
    final email = settingsBox.get('last_user_email');

    final rawData = box.get(email);

    if (rawData is Map) {
      _userData = Map<String, dynamic>.from(rawData);
      String std = _userData?['standard'] ?? 'Class 1';
      _currentStandard = int.tryParse(std.replaceAll('Class ', '')) ?? 1;
    } else {
      // Fallback
      _userData = {};
      _currentStandard = widget.standard;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.getTheme(_currentStandard);
    return Scaffold(
      backgroundColor: theme.backgroundColor, // Soft lavender background
      body: _buildBody(),
      bottomNavigationBar: _buildFloatingBottomNav(),
      extendBody: true, // Allows content to flow behind the bottom nav
    );
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return _currentStandard >= 6
            ? _buildSeniorHomeTab()
            : _buildJuniorHomeTab();
      case 1:
        return _buildSubjectSelectionTab('lessons');
      case 2:
        return _buildSubjectSelectionTab('games');
      case 3:
        return ProfilePage(
          userData: _userData ?? {},
          onUpdate: () => setState(() => _loadUserData()),
        );
      default:
        return _currentStandard >= 6
            ? _buildSeniorHomeTab()
            : _buildJuniorHomeTab();
    }
  }

  Widget _buildJuniorHomeTab() {
    final responsive = Responsive(context);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: responsive.hp(0.075)),
          _buildHeader(),
          SizedBox(height: responsive.gap(25)),
          _buildLevelCard(),
          SizedBox(height: responsive.gap(30)),
          _buildCategoryNav(),
          SizedBox(height: responsive.gap(30)),
          Padding(
            padding: responsive.padding(horizontal: 20),
            child: _buildDashboardByStandard(),
          ),
          SizedBox(height: responsive.gap(120)),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    final responsive = Responsive(context);
    final theme = AppTheme.getTheme(_currentStandard);
    final avatarSize = responsive.value(
      mobile: 65.0,
      tablet: 80.0,
      desktop: 95.0,
    );

    return Padding(
      padding: responsive.padding(horizontal: 20),
      child: Row(
        children: [
          Container(
            width: avatarSize,
            height: avatarSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3),
              boxShadow: [
                BoxShadow(
                  color: Colors.indigo.withOpacity(0.1),
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(avatarSize / 2),
              child: Container(
                color: theme.accentColor,
                child: Icon(
                  _getAvatarIcon(_userData?['avatar'] ?? widget.avatar),
                  color: theme.primaryTextColor,
                  size: responsive.iconSize(35),
                ),
              ),
            ),
          ),
          SizedBox(width: responsive.gap(15)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, ${_userData?['name'] ?? 'Marion'}',
                  style: GoogleFonts.outfit(
                    fontSize: responsive.sp(22),
                    fontWeight: FontWeight.bold,
                    color: theme.primaryTextColor,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.av_timer_rounded,
                      size: responsive.iconSize(16),
                      color: Colors.grey,
                    ),
                    SizedBox(width: responsive.gap(5)),
                    Text(
                      'Progress 10%',
                      style: GoogleFonts.outfit(
                        fontSize: responsive.sp(14),
                        color: theme.secondaryTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                padding: responsive.padding(all: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.notifications_none_rounded,
                  color: theme.primaryTextColor,
                  size: responsive.iconSize(26),
                ),
              ),
              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: theme.accentColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLevelCard() {
    final responsive = Responsive(context);
    final theme = AppTheme.getTheme(_currentStandard);

    return Container(
      margin: responsive.margin(horizontal: 20),
      padding: responsive.padding(all: 25),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: theme.cardGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: responsive.borderRadius(35),
        boxShadow: [
          BoxShadow(
            color: theme.cardGradient[0].withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Level $_currentStandard',
                style: GoogleFonts.outfit(
                  fontSize: responsive.sp(24),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: responsive.gap(5)),
              Text(
                'This is your first step to greatness!',
                style: GoogleFonts.outfit(
                  fontSize: responsive.sp(14),
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
              SizedBox(height: responsive.gap(25)),
              _buildProgressBar(),
            ],
          ),
          Positioned(
            right: -10,
            top: responsive.value(mobile: -45.0, tablet: -55.0, desktop: -65.0),
            child: Icon(
              Icons.emoji_events_rounded,
              size: responsive.iconSize(100),
              color: Colors.amber[400],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    final theme = AppTheme.getTheme(_currentStandard);
    return Container(
      height: 12,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        clipBehavior: Clip.none,
        children: [
          FractionallySizedBox(
            widthFactor: 0.1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            left: (MediaQuery.of(context).size.width - 90) * 0.1,
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: theme.accentColor,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryNav() {
    final theme = AppTheme.getTheme(_currentStandard);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          _buildCategoryItem(
            'Lessons',
            Icons.menu_book_rounded,
            theme.categoryColors[0],
          ),
          _buildCategoryItem(
            'Games',
            Icons.videogame_asset_rounded,
            theme.categoryColors[1],
          ),
          _buildCategoryItem(
            'Stories',
            Icons.auto_stories_rounded,
            theme.categoryColors[2],
          ),
          _buildCategoryItem(
            'Activities',
            Icons.brush_rounded,
            theme.categoryColors[3],
          ),
          _buildCategoryItem(
            'Discover',
            Icons.travel_explore_rounded,
            theme.categoryColors[4],
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String title, IconData icon, Color color) {
    final responsive = Responsive(context);
    final theme = AppTheme.getTheme(_currentStandard);

    return GestureDetector(
      onTap: () {
        if (title == 'Activities') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ActivitiesScreen()),
          );
        } else if (title == 'Lessons') {
          setState(() => _currentIndex = 1);
        } else if (title == 'Games') {
          setState(() => _currentIndex = 2);
        }
        // Add more navigation for Stories and Discover later
      },
      child: Padding(
        padding: responsive.padding(right: 20),
        child: Column(
          children: [
            Container(
              padding: responsive.padding(all: 18),
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: color.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: responsive.iconSize(30),
              ),
            ),
            SizedBox(height: responsive.gap(10)),
            Text(
              title,
              style: GoogleFonts.outfit(
                fontSize: responsive.sp(14),
                fontWeight: FontWeight.w600,
                color: theme.primaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSubjectSelectionTab(String mode) {
    return SubjectSelectionScreen(standard: _currentStandard, mode: mode);
  }

  Widget _buildDashboardByStandard() {
    return Column(
      children: [
        _buildSectionCard(
          'Lessons',
          'Fun learning lessons that help kids grow smarter daily.',
          Icons.menu_book_outlined,
          const Color(
            0xFFF1F5F9,
          ), // This param is ignored by buildSectionCard now or can be removed
          () => setState(() => _currentIndex = 1),
        ),
        const SizedBox(height: 20),
        _buildSectionCard(
          'Games',
          'Interactive games designed to make education exciting.',
          Icons.videogame_asset_outlined,
          const Color(0xFFF1F5F9),
          () => setState(() => _currentIndex = 2),
        ),
      ],
    );
  }

  Widget _buildSectionCard(
    String title,
    String subtitle,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    final responsive = Responsive(context);
    final theme = AppTheme.getTheme(_currentStandard);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: responsive.padding(all: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: responsive.borderRadius(35),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: responsive.padding(all: 10),
                        decoration: BoxDecoration(
                          color: theme.cardGradient[0].withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          icon,
                          color: theme.cardGradient[0],
                          size: responsive.iconSize(24),
                        ),
                      ),
                      SizedBox(width: responsive.gap(12)),
                      Flexible(
                        child: Text(
                          title,
                          style: GoogleFonts.outfit(
                            fontSize: responsive.sp(22),
                            fontWeight: FontWeight.bold,
                            color: theme.primaryTextColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: responsive.gap(15)),
                  Text(
                    subtitle,
                    style: GoogleFonts.outfit(
                      fontSize: responsive.sp(14),
                      color: theme.secondaryTextColor,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: responsive.gap(15)),
            Container(
              padding: responsive.padding(all: 12),
              decoration: BoxDecoration(
                color: theme.navBarColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.north_east_rounded,
                color: Colors.white,
                size: responsive.iconSize(20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFloatingBottomNav() {
    final responsive = Responsive(context);
    final theme = AppTheme.getTheme(_currentStandard);

    return Container(
      margin: responsive.margin(bottom: 30, left: 30, right: 30),
      height: responsive.value(mobile: 80.0, tablet: 90.0, desktop: 100.0),
      decoration: BoxDecoration(
        color: theme.navBarColor,
        borderRadius: responsive.borderRadius(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 25,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(0, Icons.home_rounded),
          _buildNavItem(1, Icons.menu_book_rounded),
          _buildNavItem(2, Icons.videogame_asset_rounded),
          _buildNavItem(3, Icons.person_rounded),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon) {
    bool isActive = _currentIndex == index;
    final responsive = Responsive(context);
    final theme = AppTheme.getTheme(_currentStandard);

    return Flexible(
      child: GestureDetector(
        onTap: () => setState(() => _currentIndex = index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          padding: EdgeInsets.symmetric(
            horizontal: isActive ? 20 : 12,
            vertical: 12,
          ),
          decoration: BoxDecoration(
            color: isActive ? theme.accentColor : Colors.transparent,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            icon,
            color: isActive ? theme.navBarColor : Colors.white60,
            size: responsive.iconSize(26),
          ),
        ),
      ),
    );
  }

  IconData _getAvatarIcon(String avatar) {
    switch (avatar) {
      case 'husky':
        return Icons.pets;
      case 'dog':
        return Icons.cruelty_free;
      case 'penguin':
        return Icons.ice_skating;
      case 'chick':
        return Icons.egg;
      case 'bear':
        return Icons.wb_sunny_outlined;
      case 'fox':
        return Icons.pest_control_rodent;
      default:
        return Icons.face;
    }
  }

  // --- SENIOR UI WIDGETS ---

  Widget _buildSeniorHomeTab() {
    final responsive = Responsive(context);
    final theme = AppTheme.getTheme(_currentStandard);

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: responsive.padding(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: responsive.hp(0.06)),
          _buildSeniorHeader(),
          SizedBox(height: responsive.gap(20)),
          _buildSearchBar(theme),
          SizedBox(height: responsive.gap(25)),
          _buildStatsRow(theme),
          SizedBox(height: responsive.gap(25)),
          Text(
            "Jump Back In",
            style: GoogleFonts.outfit(
              fontSize: responsive.sp(18),
              fontWeight: FontWeight.bold,
              color: theme.primaryTextColor,
            ),
          ),
          SizedBox(height: responsive.gap(15)),
          _buildContinueLearningCard(theme),
          SizedBox(height: responsive.gap(25)),
          Text(
            "Quick Actions",
            style: GoogleFonts.outfit(
              fontSize: responsive.sp(18),
              fontWeight: FontWeight.bold,
              color: theme.primaryTextColor,
            ),
          ),
          SizedBox(height: responsive.gap(15)),
          _buildQuickAccessGrid(theme),
          SizedBox(height: responsive.gap(25)),
          _buildDailyThinkCard(theme),
          SizedBox(height: responsive.gap(120)),
        ],
      ),
    );
  }

  Widget _buildSeniorHeader() {
    final responsive = Responsive(context);
    final theme = AppTheme.getTheme(_currentStandard);
    final now = DateTime.now();
    final dateStr = "${now.day}/${now.month}/${now.year}";

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dateStr,
              style: GoogleFonts.outfit(
                fontSize: responsive.sp(14),
                fontWeight: FontWeight.w500,
                color: theme.secondaryTextColor,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Hi, ${_userData?['name'] ?? 'Student'}",
              style: GoogleFonts.outfit(
                fontSize: responsive.sp(26),
                fontWeight: FontWeight.bold,
                color: theme.primaryTextColor,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10),
            ],
          ),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: theme.accentColor.withOpacity(0.1),
            child: Icon(
              _getAvatarIcon(_userData?['avatar'] ?? widget.avatar),
              color: theme.primaryTextColor,
              size: 28,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSearchBar(AppTheme theme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.search_rounded, color: theme.secondaryTextColor),
          const SizedBox(width: 15),
          Text(
            "Search for lessons, games...",
            style: GoogleFonts.outfit(
              color: theme.secondaryTextColor.withOpacity(0.7),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsRow(AppTheme theme) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          _buildStatCard(
            theme,
            "Points",
            "1,250",
            Icons.star_rounded,
            Colors.amber,
          ),
          const SizedBox(width: 15),
          _buildStatCard(
            theme,
            "Streak",
            "5 Days",
            Icons.local_fire_department_rounded,
            Colors.orange,
          ),
          const SizedBox(width: 15),
          _buildStatCard(
            theme,
            "Completed",
            "12 Lessons",
            Icons.check_circle_rounded,
            Colors.green,
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(
    AppTheme theme,
    String label,
    String value,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: theme.cardGradient[0], // Using theme primary color
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: theme.cardGradient[0].withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: GoogleFonts.outfit(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                label,
                style: GoogleFonts.outfit(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDailyThinkCard(AppTheme theme) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xFF263238), const Color(0xFF37474F)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.lightbulb, color: Colors.yellowAccent, size: 24),
              const SizedBox(width: 10),
              Text(
                "Fact of the Day",
                style: GoogleFonts.outfit(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            "The Eiffel Tower can be 15 cm taller during the summer due to thermal expansion of the iron!",
            style: GoogleFonts.outfit(
              color: Colors.white,
              fontSize: 18,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContinueLearningCard(AppTheme theme) {
    // responsive variable removed as it was unused
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: theme.accentColor.withOpacity(0.3),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF263238).withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: theme.accentColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(
              Icons.functions_rounded,
              color: theme.accentColor,
              size: 30,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Linear Equations",
                  style: GoogleFonts.outfit(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: theme.primaryTextColor,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Mathematics • 65% Completed",
                  style: GoogleFonts.outfit(
                    fontSize: 13,
                    color: theme.secondaryTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: LinearProgressIndicator(
                    value: 0.65,
                    backgroundColor: theme.accentColor.withOpacity(0.1),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      theme.accentColor,
                    ),
                    minHeight: 6,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: theme.primaryTextColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAccessGrid(AppTheme theme) {
    // responsive variable removed as it was unused
    final items = [
      {
        'title': 'Assignments',
        'icon': Icons.assignment_rounded,
        'color': const Color(0xFF6C63FF),
      },
      {
        'title': 'Quiz',
        'icon': Icons.quiz_rounded,
        'color': const Color(0xFFFF6584),
      },
      {
        'title': 'Results',
        'icon': Icons.bar_chart_rounded,
        'color': const Color(0xFF38B6FF),
      },
      {
        'title': 'Calendar',
        'icon': Icons.calendar_month_rounded,
        'color': const Color(0xFFFFBA08),
      },
    ];

    return Wrap(
      spacing: 15,
      runSpacing: 15,
      children:
          items.map((item) {
            return Container(
              width:
                  MediaQuery.of(context).size.width / 2.3, // Roughly half width
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: (item['color'] as Color).withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: (item['color'] as Color).withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      item['icon'] as IconData,
                      color: item['color'] as Color,
                      size: 28,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    item['title'] as String,
                    style: GoogleFonts.outfit(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: theme.primaryTextColor,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }
}
