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
        if (_currentStandard >= 6 && _currentStandard <= 10) {
          return _buildSecondaryHomeTab();
        }
        return _currentStandard >= 11
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
        if (_currentStandard >= 6 && _currentStandard <= 10) {
          return _buildSecondaryHomeTab();
        }
        return _currentStandard >= 11
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

  // --- SECONDARY UI WIDGETS (Class 6-10) ---

  Widget _buildSecondaryHomeTab() {
    final responsive = Responsive(context);
    final theme = AppTheme.getTheme(_currentStandard);

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: responsive.padding(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: responsive.hp(0.06)),
          _buildSecondaryHeader(),
          SizedBox(height: responsive.gap(20)),
          _buildGlassSearchBar(theme),
          SizedBox(height: responsive.gap(30)),
          _buildSubjectScroller(theme),
          SizedBox(height: responsive.gap(30)),
          Text(
            "Target for Today",
            style: GoogleFonts.outfit(
              fontSize: responsive.sp(20),
              fontWeight: FontWeight.bold,
              color: theme.primaryTextColor,
            ),
          ),
          SizedBox(height: responsive.gap(15)),
          _buildMissionCard(theme),
          SizedBox(height: responsive.gap(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Learning Pathways",
                style: GoogleFonts.outfit(
                  fontSize: responsive.sp(20),
                  fontWeight: FontWeight.bold,
                  color: theme.primaryTextColor,
                ),
              ),
              Text(
                "View All",
                style: GoogleFonts.outfit(
                  fontSize: responsive.sp(14),
                  fontWeight: FontWeight.w600,
                  color: theme.cardGradient[0],
                ),
              ),
            ],
          ),
          SizedBox(height: responsive.gap(20)),
          _buildPathwayGrid(theme),
          SizedBox(height: responsive.gap(120)),
        ],
      ),
    );
  }

  Widget _buildSecondaryHeader() {
    final responsive = Responsive(context);
    final theme = AppTheme.getTheme(_currentStandard);

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: theme.cardGradient),
          ),
          child: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: Icon(
              _getAvatarIcon(_userData?['avatar'] ?? widget.avatar),
              color: theme.cardGradient[1],
              size: 30,
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back,",
                style: GoogleFonts.outfit(
                  fontSize: responsive.sp(14),
                  color: theme.secondaryTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "${_userData?['name'] ?? 'Scholar'}",
                style: GoogleFonts.outfit(
                  fontSize: responsive.sp(24),
                  fontWeight: FontWeight.bold,
                  color: theme.primaryTextColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Icon(
            Icons.notifications_active_outlined,
            color: theme.cardGradient[0],
            size: 24,
          ),
        ),
      ],
    );
  }

  Widget _buildGlassSearchBar(AppTheme theme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: theme.cardGradient[0].withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "What do you want to learn today?",
          hintStyle: GoogleFonts.outfit(
            color: theme.secondaryTextColor.withOpacity(0.5),
            fontSize: 16,
          ),
          icon: Icon(Icons.search_rounded, color: theme.cardGradient[0]),
        ),
      ),
    );
  }

  Widget _buildSubjectScroller(AppTheme theme) {
    final subjects = ['Tamil', 'English', 'Maths', 'Science', 'Social'];
    final icons = [
      Icons.menu_book_rounded,
      Icons.translate_rounded,
      Icons.functions_rounded,
      Icons.biotech_rounded,
      Icons.public_rounded,
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: List.generate(subjects.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/lessons_list',
                      arguments: {
                        'std': _currentStandard,
                        'subject': subjects[index],
                      },
                    );
                  },
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: theme
                          .categoryColors[index % theme.categoryColors.length]
                          .withOpacity(0.15),
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        color: theme
                            .categoryColors[index % theme.categoryColors.length]
                            .withOpacity(0.3),
                        width: 1.5,
                      ),
                    ),
                    child: Icon(
                      icons[index],
                      color:
                          theme.categoryColors[index %
                              theme.categoryColors.length],
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  subjects[index],
                  style: GoogleFonts.outfit(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: theme.primaryTextColor,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget _buildMissionCard(AppTheme theme) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: theme.cardGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: theme.cardGradient[0].withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "CLASS ${_currentStandard}",
                  style: GoogleFonts.outfit(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
              Icon(
                Icons.auto_awesome_rounded,
                color: Colors.amber[200],
                size: 24,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "The Power of Algebra",
            style: GoogleFonts.outfit(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Master linear equations with our latest simulation module.",
            style: GoogleFonts.outfit(
              fontSize: 14,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.75,
                      child: Container(
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Text(
                "75%",
                style: GoogleFonts.outfit(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPathwayGrid(AppTheme theme) {
    final pathways = [
      {
        'title': 'Video Lessons',
        'desc': 'Watch & Learn',
        'icon': Icons.play_circle_fill_rounded,
        'color': theme.categoryColors[0],
      },
      {
        'title': 'Practice Tests',
        'desc': 'Check Knowledge',
        'icon': Icons.edit_document,
        'color': theme.categoryColors[1],
      },
      {
        'title': 'Interactive Labs',
        'desc': 'Experiment',
        'icon': Icons.biotech_rounded,
        'color': theme.categoryColors[2],
      },
      {
        'title': 'Doubt Solve',
        'desc': 'Ask Experts',
        'icon': Icons.help_center_rounded,
        'color': theme.categoryColors[3],
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 1.1,
      ),
      itemCount: pathways.length,
      itemBuilder: (context, index) {
        final item = pathways[index];
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: (item['color'] as Color).withOpacity(0.1),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: (item['color'] as Color).withOpacity(0.04),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                item['icon'] as IconData,
                color: item['color'] as Color,
                size: 32,
              ),
              const SizedBox(height: 15),
              Text(
                item['title'] as String,
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: theme.primaryTextColor,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                item['desc'] as String,
                style: GoogleFonts.outfit(
                  fontSize: 12,
                  color: theme.secondaryTextColor,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSecondaryDailyFact(AppTheme theme) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.rocket_launch_rounded,
                color: Colors.orangeAccent,
                size: 24,
              ),
              const SizedBox(width: 12),
              Text(
                "Did you know?",
                style: GoogleFonts.outfit(
                  color: Colors.white.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Text(
            "A day on Venus is longer than a year on Venus. It takes Venus longer to rotate once on its axis than to complete one orbit of the Sun!",
            style: GoogleFonts.outfit(
              color: Colors.white,
              fontSize: 17,
              height: 1.5,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
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
          _buildSeniorDashboardHeader(),
          SizedBox(height: responsive.gap(25)),
          _buildSeniorSearchBar(theme),
          SizedBox(height: responsive.gap(30)),
          Text(
            "Featured Primary Course",
            style: GoogleFonts.outfit(
              fontSize: responsive.sp(20),
              fontWeight: FontWeight.bold,
              color: theme.primaryTextColor,
            ),
          ),
          SizedBox(height: responsive.gap(15)),
          _buildFeaturedPrimaryCourse(theme),
          SizedBox(height: responsive.gap(30)),
          Text(
            "Current Progress",
            style: GoogleFonts.outfit(
              fontSize: responsive.sp(20),
              fontWeight: FontWeight.bold,
              color: theme.primaryTextColor,
            ),
          ),
          SizedBox(height: responsive.gap(15)),
          _buildSeniorProgressCard(theme),
          SizedBox(height: responsive.gap(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Academic Tools",
                style: GoogleFonts.outfit(
                  fontSize: responsive.sp(20),
                  fontWeight: FontWeight.bold,
                  color: theme.primaryTextColor,
                ),
              ),
              Text(
                "View History",
                style: GoogleFonts.outfit(
                  fontSize: responsive.sp(14),
                  fontWeight: FontWeight.w600,
                  color: theme.cardGradient[0].withOpacity(0.7),
                ),
              ),
            ],
          ),
          SizedBox(height: responsive.gap(15)),
          _buildSeniorToolsGrid(theme),
          SizedBox(height: responsive.gap(30)),
          _buildSeniorInsightCard(theme),
          SizedBox(height: responsive.gap(120)),
        ],
      ),
    );
  }

  Widget _buildSeniorDashboardHeader() {
    final responsive = Responsive(context);
    final theme = AppTheme.getTheme(_currentStandard);
    final now = DateTime.now();
    final dayNames = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    final monthNames = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    final dateStr =
        "${dayNames[now.weekday - 1]}, ${now.day} ${monthNames[now.month - 1]}";

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dateStr,
                style: GoogleFonts.outfit(
                  fontSize: responsive.sp(14),
                  fontWeight: FontWeight.w600,
                  color: theme.secondaryTextColor,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "Welcome back, ${_userData?['name'] ?? 'Scholar'}",
                style: GoogleFonts.outfit(
                  fontSize: responsive.sp(24),
                  fontWeight: FontWeight.bold,
                  color: theme.primaryTextColor,
                  letterSpacing: -0.5,
                ),
              ),
            ],
          ),
        ),
        _buildHeaderStatIndicator(
          theme,
          Icons.local_fire_department_rounded,
          "05",
          Colors.orange,
        ),
        const SizedBox(width: 12),
        Hero(
          tag: 'profile_avatar',
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: theme.cardGradient[0].withOpacity(0.1),
                width: 2,
              ),
            ),
            child: CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: Icon(
                _getAvatarIcon(_userData?['avatar'] ?? widget.avatar),
                color: theme.cardGradient[0],
                size: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderStatIndicator(
    AppTheme theme,
    IconData icon,
    String value,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.2), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 16),
          const SizedBox(width: 4),
          Text(
            value,
            style: GoogleFonts.outfit(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSeniorSearchBar(AppTheme theme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: theme.cardGradient[0].withOpacity(0.05)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        style: GoogleFonts.outfit(fontSize: 15, color: theme.primaryTextColor),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search for topics or assignments...",
          hintStyle: GoogleFonts.outfit(
            color: theme.secondaryTextColor.withOpacity(0.6),
            fontSize: 15,
          ),
          icon: Icon(
            Icons.search_rounded,
            color: theme.secondaryTextColor.withOpacity(0.5),
            size: 22,
          ),
          suffixIcon: Icon(
            Icons.tune_rounded,
            color: theme.cardGradient[0].withOpacity(0.5),
            size: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturedPrimaryCourse(AppTheme theme) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/lessons_list',
          arguments: {'std': _currentStandard, 'subject': 'Computer'},
        );
      },
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: theme.cardGradient[0].withOpacity(0.08)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: theme.categoryColors[0].withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.computer_rounded,
                color: theme.categoryColors[0],
                size: 50,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: theme.accentColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "MAJOR",
                      style: GoogleFonts.outfit(
                        color: theme.accentColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Computer Science",
                    style: GoogleFonts.outfit(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: theme.primaryTextColor,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Master C++, Logic Gates & Python",
                    style: GoogleFonts.outfit(
                      fontSize: 14,
                      color: theme.secondaryTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: theme.secondaryTextColor.withOpacity(0.3),
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSeniorSubjectGrid(AppTheme theme) {
    final icons = [
      Icons.computer_rounded,
      Icons.language_rounded,
      Icons.calculate_rounded,
      Icons.biotech_rounded,
      Icons.science_rounded,
    ];
    final names = ['Computer', 'Tamil', 'Maths', 'Chemistry', 'Physics'];
    final colors = [
      const Color(0xFF6366F1), // Indigo
      const Color(0xFFF59E0B), // Amber
      const Color(0xFF10B981), // Emerald
      const Color(0xFFEC4899), // Pink
      const Color(0xFF06B6D4), // Cyan
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.4,
      ),
      itemCount: names.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              '/lessons_list',
              arguments: {'std': _currentStandard, 'subject': names[index]},
            );
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: colors[index % colors.length].withOpacity(0.1),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: colors[index % colors.length].withOpacity(0.02),
                  blurRadius: 15,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: colors[index % colors.length].withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icons[index % icons.length],
                    color: colors[index % colors.length],
                    size: 22,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        names[index],
                        style: GoogleFonts.outfit(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: theme.primaryTextColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "Term 1 & 2",
                        style: GoogleFonts.outfit(
                          fontSize: 11,
                          color: theme.secondaryTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSeniorProgressCard(AppTheme theme) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: theme.cardGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: theme.cardGradient[0].withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.trending_up_rounded,
                      color: Colors.white,
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "On Track",
                      style: GoogleFonts.outfit(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Level $_currentStandard",
                style: GoogleFonts.outfit(
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "Quantum Physics I",
            style: GoogleFonts.outfit(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "Next: Wave-Particle Duality Principle",
            style: GoogleFonts.outfit(
              fontSize: 14,
              color: Colors.white.withOpacity(0.7),
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Overall Efficiency",
                          style: GoogleFonts.outfit(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "68%",
                          style: GoogleFonts.outfit(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: 0.68,
                        backgroundColor: Colors.white.withOpacity(0.1),
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          Colors.white,
                        ),
                        minHeight: 6,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Container(
                height: 48,
                width: 48,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: theme.cardGradient[0],
                  size: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSeniorToolsGrid(AppTheme theme) {
    final tools = [
      {
        'title': 'Labs',
        'icon': Icons.biotech_rounded,
        'color': const Color(0xFF6366F1),
      },
      {
        'title': 'Exams',
        'icon': Icons.assignment_rounded,
        'color': const Color(0xFFF59E0B),
      },
      {
        'title': 'Library',
        'icon': Icons.collections_bookmark_rounded,
        'color': const Color(0xFF10B981),
      },
      {
        'title': 'Forum',
        'icon': Icons.forum_rounded,
        'color': const Color(0xFF8B5CF6),
      },
    ];

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children:
          tools.map((tool) {
            return Container(
              width: (MediaQuery.of(context).size.width - 52) / 2,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: theme.cardGradient[0].withOpacity(0.04),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: (tool['color'] as Color).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      tool['icon'] as IconData,
                      color: tool['color'] as Color,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    tool['title'] as String,
                    style: GoogleFonts.outfit(
                      fontSize: 15,
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

  Widget _buildSeniorInsightCard(AppTheme theme) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: theme.accentColor.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.lightbulb_outline_rounded,
                color: theme.accentColor,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                "ACADEMIC INSIGHT",
                style: GoogleFonts.outfit(
                  color: theme.accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            "\"The important thing is not to stop questioning. Curiosity has its own reason for existing.\"",
            style: GoogleFonts.outfit(
              color: theme.primaryTextColor,
              fontSize: 16,
              fontStyle: FontStyle.italic,
              height: 1.5,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "— Albert Einstein",
            style: GoogleFonts.outfit(
              color: theme.secondaryTextColor,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
