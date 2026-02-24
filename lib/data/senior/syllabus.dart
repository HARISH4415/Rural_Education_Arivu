final Map<String, List<Map<String, dynamic>>> seniorTopics = {
  'Python Programming': [
    {
      'level': 1,
      'title': 'Variables & Data Types',
      'subject': 'Computer',
      'term': 1,
      'description': 'Introduction to basic Python concepts.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'x = 5 is a ____ type.',
            'options': ['int', 'float', 'string'],
            'ans': 'int',
          },
        ],
      },
    },
  ],
  'Advanced Algebra': [
    {
      'level': 1,
      'title': 'Matrices & Determinants',
      'subject': 'Maths',
      'term': 1,
      'description': 'Solve matrix problems.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'A square matrix has ____ rows and columns.',
            'options': ['different', 'equal', 'zero'],
            'ans': 'equal',
          },
        ],
      },
    },
  ],
};

final Map<String, List<Map<String, dynamic>>> std11Topics = {
  'Tamil Explorations': [
    {
      'level': 1,
      'title': 'Ancient Literature',
      'subject': 'Tamil',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'எட்டுத்தொகை நூல்களுள் ஒன்று ____.',
            'options': ['நற்றிணை', 'திருக்குறள்', 'சிலப்பதிகாரம்'],
            'ans': 'நற்றிணை',
          },
          {
            'text': 'பத்துப்பாட்டு நூல்களுள் ஒன்று ____.',
            'options': ['மதுரைக்காஞ்சி', 'பரிபாடல்', 'கலித்தொகை'],
            'ans': 'மதுரைக்காஞ்சி',
          },
          {
            'text': 'ஐங்குறுநூறு நூலைத் தொகுத்தவர் ____.',
            'options': ['கூடலூர் கிழார்', 'நச்சினார்க்கினியர்', 'கபிலர்'],
            'ans': 'கூடலூர் கிழார்',
          },
          {
            'text': 'கலித்தொகையைத் தொகுத்தவர் ____.',
            'options': ['நல்லந்துவனார்', 'பெருந்தேவனார்', 'ஔவையார்'],
            'ans': 'நல்லந்துவனார்',
          },
          {
            'text': 'பரிபாடல் ____ என அழைக்கப்படுகிறது.',
            'options': ['ஓங்கு பரிபாடல்', 'வெண்பபா', 'அகவல்'],
            'ans': 'ஓங்கு பரிபாடல்',
          },
        ],
      },
    },
    {
      'level': 2,
      'title': 'Grammar Basics',
      'subject': 'Tamil',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'பெயர்ச்சொல்', 'right': 'கண்ணன்', 'emoji': '👤'},
          {'left': 'வினைச்சொல்', 'right': 'வந்தான்', 'emoji': '🏃'},
          {'left': 'உரிச்சொல்', 'right': 'மாநகரம்', 'emoji': '🏙️'},
          {'left': 'இடைச்சொல்', 'right': 'உம்', 'emoji': '➕'},
          {'left': 'வினையெச்சம்', 'right': 'படித்து', 'emoji': '📖'},
        ],
      },
    },
    {
      'level': 3,
      'title': 'Modern Prose',
      'subject': 'Tamil',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'புதிய உரைநடை நூலின் ஆசிரியர் ____.',
            'options': ['எழில்முதல்வன்', 'பாரதியார்', 'பாரதிதாசன்'],
            'ans': 'எழில்முதல்வன்',
          },
          {
            'text': 'இயற்கை தவம் என்று அழைக்கப்படும் நூல் ____.',
            'options': ['சீவக சிந்தாமணி', 'சிலப்பதிகாரம்', 'மணிமேகலை'],
            'ans': 'சீவக சிந்தாமணி',
          },
          {
            'text': 'உரைநடை சக்கரவர்த்தி எனப்படுவர் ____.',
            'options': ['ரா.பி. சேதுப்பிள்ளை', 'திரு.வி.க', 'மு.வ'],
            'ans': 'ரா.பி. சேதுப்பிள்ளை',
          },
          {
            'text': 'தமிழ் தென்றல் என்று அழைக்கப்படுபவர் ____.',
            'options': ['திரு.வி.க', 'கம்பர்', 'பாரதி'],
            'ans': 'திரு.வி.க',
          },
          {
            'text': 'பாவேந்தர் என அழைக்கப்படுபவர் ____.',
            'options': ['பாரதிதாசன்', 'பாரதியார்', 'நாமக்கல் கவிஞர்'],
            'ans': 'பாரதிதாசன்',
          },
        ],
      },
    },
    {
      'level': 4,
      'title': 'Poetic Devices',
      'subject': 'Tamil',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {
            'left': 'மோனை',
            'right': 'முதல் எழுத்து ஒன்றிவருதல்',
            'emoji': '🅰️',
          },
          {
            'left': 'எதுகை',
            'right': 'இரண்டாம் எழுத்து ஒன்றிவருதல்',
            'emoji': '🅱️',
          },
          {
            'left': 'இயைபு',
            'right': 'இறுதி எழுத்து ஒன்றிவருதல்',
            'emoji': '💤',
          },
          {'left': 'முரண்', 'right': 'எதிர்ச் சொற்கள் வருதல்', 'emoji': '⚖️'},
          {
            'left': 'அளபெடை',
            'right': 'ஓசை குறையும்போது நீட்டித்தல்',
            'emoji': '🔊',
          },
        ],
      },
    },
    {
      'level': 5,
      'title': 'Ethical Works',
      'subject': 'Tamil',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'திருக்குறளில் உள்ள அதிகாரங்கள் ____.',
            'options': ['133', '100', '150'],
            'ans': '133',
          },
          {
            'text': 'திருக்குறள் ____ பிரிவுகளைக் கொண்டது.',
            'options': ['3', '4', '2'],
            'ans': '3',
          },
          {
            'text': 'நாலடியாரை இயற்றியவர் ____.',
            'options': ['சமண முனிவர்கள்', 'திருவள்ளுவர்', 'ஔவையார்'],
            'ans': 'சமண முனிவர்கள்',
          },
          {
            'text': 'பழமொழி நானூறு ஆசிரியர் ____.',
            'options': ['முன்றுறை அரையனார்', 'கபிலர்', 'கம்பர்'],
            'ans': 'முன்றுறை அரையனார்',
          },
          {
            'text': 'ஏலாதி நூலின் ஆசிரியர் ____.',
            'options': ['கணிமேதாவியார்', 'காரியாசன்', 'நல்லாதனார்'],
            'ans': 'கணிமேதாவியார்',
          },
        ],
      },
    },
  ],
  'Mathematical Analysis': [
    {
      'level': 1,
      'title': 'Sets and Relations',
      'subject': 'Maths',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'If A={1,2}, then power set P(A) has ____ elements.',
            'options': ['2', '4', '8'],
            'ans': '4',
          },
          {
            'text': 'A relation R on set A is ____ if (a,a) ∈ R for all a ∈ A.',
            'options': ['reflexive', 'symmetric', 'transitive'],
            'ans': 'reflexive',
          },
          {
            'text': 'Empty set is a subset of ____ set.',
            'options': ['every', 'only null', 'no'],
            'ans': 'every',
          },
          {
            'text': 'Number of elements in A × B where n(A)=2, n(B)=3 is ____.',
            'options': ['6', '5', '1'],
            'ans': '6',
          },
          {
            'text': 'Intersetion of A and A\' is ____.',
            'options': ['∅', 'A', 'U'],
            'ans': '∅',
          },
        ],
      },
    },
    {
      'level': 2,
      'title': 'Trigonometry',
      'subject': 'Maths',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'sin 90°', 'right': '1', 'emoji': '📐'},
          {'left': 'cos 90°', 'right': '0', 'emoji': '📏'},
          {'left': 'tan 45°', 'right': '1', 'emoji': '🔢'},
          {'left': 'sec²θ - tan²θ', 'right': '1', 'emoji': '📐'},
          {'left': 'sin(-θ)', 'right': '-sin θ', 'emoji': '📉'},
        ],
      },
    },
    {
      'level': 3,
      'title': 'Algebraic Identities',
      'subject': 'Maths',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': '(a+b)² = a² + 2ab + ____.',
            'options': ['b²', '2b²', 'ab'],
            'ans': 'b²',
          },
          {
            'text': 'a² - b² = (a+b) x ____.',
            'options': ['(a-b)', '(a+b)', 'ab'],
            'ans': '(a-b)',
          },
          {
            'text': '(a-b)² = a² - 2ab + ____.',
            'options': ['b²', 'ab', '-b²'],
            'ans': 'b²',
          },
          {
            'text': '(a+b)³ = a³ + 3a²b + 3ab² + ____.',
            'options': ['b³', '3b³', 'b²'],
            'ans': 'b³',
          },
          {
            'text': 'Log(ab) = Log a + ____.',
            'options': ['Log b', 'ab', 'Log(a+b)'],
            'ans': 'Log b',
          },
        ],
      },
    },
    {
      'level': 4,
      'title': 'Calculus Intro',
      'subject': 'Maths',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'd/dx (x²)', 'right': '2x', 'emoji': '📈'},
          {'left': '∫ x dx', 'right': 'x²/2', 'emoji': '📉'},
          {'left': 'd/dx (sin x)', 'right': 'cos x', 'emoji': '📐'},
          {'left': '∫ cos x dx', 'right': 'sin x', 'emoji': '📈'},
          {'left': 'd/dx (constant)', 'right': '0', 'emoji': '🛑'},
        ],
      },
    },
    {
      'level': 5,
      'title': 'Probability',
      'subject': 'Maths',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Probability of a sure event is ____.',
            'options': ['0', '1', '0.5'],
            'ans': '1',
          },
          {
            'text': 'P(A) + P(A\') = ____.',
            'options': ['1', '0', '0.5'],
            'ans': '1',
          },
          {
            'text': 'Outcome of tossing a coin twice has ____ possibilities.',
            'options': ['4', '2', '8'],
            'ans': '4',
          },
          {
            'text': 'Probability of an impossible event is ____.',
            'options': ['0', '1', '0.5'],
            'ans': '0',
          },
          {
            'text': 'If P(A) = 0.7, then P(A\') = ____.',
            'options': ['0.3', '0.7', '1'],
            'ans': '0.3',
          },
        ],
      },
    },
  ],
  'Physics World': [
    {
      'level': 1,
      'title': 'Units & Dimensions',
      'subject': 'Physics',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'SI unit of Luminous Intensity is ____.',
            'options': ['Candela', 'Mole', 'Kelvin'],
            'ans': 'Candela',
          },
          {
            'text': '1 Light Year = ____ m.',
            'options': ['9.46 x 10¹⁵', '3.1 x 10⁸', '1.5 x 10¹¹'],
            'ans': '9.46 x 10¹⁵',
          },
          {
            'text': 'Dimension of Plane Angle is ____.',
            'options': ['No Dimension', 'L', 'T'],
            'ans': 'No Dimension',
          },
          {
            'text': 'Unit of Solid Angle is ____.',
            'options': ['Steradian', 'Radian', 'Degree'],
            'ans': 'Steradian',
          },
          {
            'text': 'SI unit of Temperature is ____.',
            'options': ['Kelvin', 'Celsius', 'Fahrenheit'],
            'ans': 'Kelvin',
          },
        ],
      },
    },
    {
      'level': 2,
      'title': 'Kinematics',
      'subject': 'Physics',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Velocity', 'right': 'm/s', 'emoji': '🏃'},
          {'left': 'Acceleration', 'right': 'm/s²', 'emoji': '🚀'},
          {'left': 'Force', 'right': 'Newton', 'emoji': '💪'},
          {'left': 'Work', 'right': 'Joule', 'emoji': '💼'},
          {'left': 'Power', 'right': 'Watt', 'emoji': '⚡'},
        ],
      },
    },
    {
      'level': 3,
      'title': 'Laws of Motion',
      'subject': 'Physics',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': "Newton's second law is F = ____.",
            'options': ['ma', 'mv', 'mg'],
            'ans': 'ma',
          },
          {
            'text': 'Momentum p = ____.',
            'options': ['mv', 'ma', 'm/v'],
            'ans': 'mv',
          },
          {
            'text': 'Impulse = Change in ____.',
            'options': ['Momentum', 'Force', 'Velocity'],
            'ans': 'Momentum',
          },
          {
            'text': 'Recoil of gun is an example of conservation of ____.',
            'options': ['Momentum', 'Energy', 'Mass'],
            'ans': 'Momentum',
          },
          {
            'text': 'Sliding friction is ____ than Static friction.',
            'options': ['Less', 'More', 'Equal'],
            'ans': 'Less',
          },
        ],
      },
    },
    {
      'level': 4,
      'title': 'Work & Energy',
      'subject': 'Physics',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Kinetic Energy', 'right': '½mv²', 'emoji': '⚡'},
          {'left': 'Potential Energy', 'right': 'mgh', 'emoji': '⛰️'},
          {'left': 'Work done', 'right': 'F.s', 'emoji': '🏃'},
          {
            'left': 'Elastic Collision',
            'right': 'K.E Conserved',
            'emoji': '🎾',
          },
          {
            'left': 'Inelastic Collision',
            'right': 'K.E Not Conserved',
            'emoji': '💥',
          },
        ],
      },
    },
    {
      'level': 5,
      'title': 'Gravitation',
      'subject': 'Physics',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Acceleration due to gravity g = ____ m/s².',
            'options': ['9.8', '10', '8.9'],
            'ans': '9.8',
          },
          {
            'text': 'Value of Universal Gravitational Constant G is ____.',
            'options': ['6.67 x 10⁻¹¹', '9.8', '1.6 x 10⁻¹⁹'],
            'ans': '6.67 x 10⁻¹¹',
          },
          {
            'text': 'Weight of a body at center of Earth is ____.',
            'options': ['Zero', 'Maximum', 'Infinity'],
            'ans': 'Zero',
          },
          {
            'text': 'Escape velocity on Earth is ____ km/s.',
            'options': ['11.2', '7.9', '42'],
            'ans': '11.2',
          },
          {
            'text': 'Kepler\'s first law is the law of ____.',
            'options': ['Orbits', 'Areas', 'Periods'],
            'ans': 'Orbits',
          },
        ],
      },
    },
  ],
  'Chemical Science': [
    {
      'level': 1,
      'title': 'Atomic Structure',
      'subject': 'Chemistry',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Election was discovered by ____.',
            'options': ['J.J. Thomson', 'Rutherford', 'Bohr'],
            'ans': 'J.J. Thomson',
          },
          {
            'text': 'Nucleus was discovered by ____.',
            'options': ['Rutherford', 'Thomson', 'Chadwick'],
            'ans': 'Rutherford',
          },
          {
            'text': 'Neutron was discovered by ____.',
            'options': ['James Chadwick', 'Bohr', 'Dalton'],
            'ans': 'James Chadwick',
          },
          {
            'text': 'Number of electrons in Carbon atom is ____.',
            'options': ['6', '12', '4'],
            'ans': '6',
          },
          {
            'text': 'Mass number is sum of protons and ____.',
            'options': ['neutrons', 'electrons', 'photons'],
            'ans': 'neutrons',
          },
        ],
      },
    },
    {
      'level': 2,
      'title': 'Periodic Table',
      'subject': 'Chemistry',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'H', 'right': 'Hydrogen', 'emoji': '🎈'},
          {'left': 'He', 'right': 'Helium', 'emoji': '🎈'},
          {'left': 'Li', 'right': 'Lithium', 'emoji': '🔋'},
          {'left': 'Na', 'right': 'Sodium', 'emoji': '🧂'},
          {'left': 'Cl', 'right': 'Chlorine', 'emoji': '🧪'},
        ],
      },
    },
    {
      'level': 3,
      'title': 'Chemical Bonding',
      'subject': 'Chemistry',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Bond formed by sharing of electrons is ____.',
            'options': ['Covalent', 'Ionic', 'Metallic'],
            'ans': 'Covalent',
          },
          {
            'text': 'Bond formed by transfer of electrons is ____.',
            'options': ['Ionic', 'Covalent', 'Hydrogen'],
            'ans': 'Ionic',
          },
          {
            'text': 'Shape of NH3 molecule is ____.',
            'options': ['Pyramidal', 'Linear', 'Planar'],
            'ans': 'Pyramidal',
          },
          {
            'text': 'Valency of Oxygen is ____.',
            'options': ['2', '1', '4'],
            'ans': '2',
          },
          {
            'text': 'Hybridization of Carbon in Methane is ____.',
            'options': ['sp³', 'sp²', 'sp'],
            'ans': 'sp³',
          },
        ],
      },
    },
    {
      'level': 4,
      'title': 'States of Matter',
      'subject': 'Chemistry',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Boyle\'s Law', 'right': 'P ∝ 1/V', 'emoji': '🧪'},
          {'left': 'Charles\'s Law', 'right': 'V ∝ T', 'emoji': '🔥'},
          {'left': 'Avogadro Law', 'right': 'V ∝ n', 'emoji': '⚖️'},
          {'left': 'Ideal Gas Eq', 'right': 'PV = nRT', 'emoji': '🎈'},
          {
            'left': 'Dalton\'s Law',
            'right': 'Partial Pressures',
            'emoji': '💨',
          },
        ],
      },
    },
    {
      'level': 5,
      'title': 'Thermodynamics',
      'subject': 'Chemistry',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'For a spontaneous process, ΔG must be ____.',
            'options': ['Negative', 'Positive', 'Zero'],
            'ans': 'Negative',
          },
          {
            'text': 'Enthalpy change at constant pressure is ____.',
            'options': ['ΔH', 'ΔE', 'ΔS'],
            'ans': 'ΔH',
          },
          {
            'text': 'Entropy is a measure of ____.',
            'options': ['Randomness', 'Energy', 'Heat'],
            'ans': 'Randomness',
          },
          {
            'text':
                'First law of thermodynamics relates to conservation of ____.',
            'options': ['Energy', 'Mass', 'Momentum'],
            'ans': 'Energy',
          },
          {
            'text': 'Units of heat capacity are ____.',
            'options': ['J/K', 'J', 'W'],
            'ans': 'J/K',
          },
        ],
      },
    },
  ],
  'Computing Fundamentals': [
    {
      'level': 1,
      'title': 'Computer Basics',
      'subject': 'Computer',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Father of Computer is ____.',
            'options': ['Charles Babbage', 'Alan Turing', 'Bill Gates'],
            'ans': 'Charles Babbage',
          },
          {
            'text': 'First generation computers used ____.',
            'options': ['Vacuum Tubes', 'Transistors', 'ICs'],
            'ans': 'Vacuum Tubes',
          },
          {
            'text': 'The brain of the computer is ____.',
            'options': ['CPU', 'RAM', 'ALU'],
            'ans': 'CPU',
          },
          {
            'text': '1 KB (Kilobyte) is equal to ____ bytes.',
            'options': ['1024', '1000', '2048'],
            'ans': '1024',
          },
          {
            'text': 'Which of these is an input device?',
            'options': ['Mouse', 'Monitor', 'Printer'],
            'ans': 'Mouse',
          },
        ],
      },
    },
    {
      'level': 2,
      'title': 'Hardware & Software',
      'subject': 'Computer',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'CPU', 'right': 'Brain of Computer', 'emoji': '🧠'},
          {'left': 'RAM', 'right': 'Primary Memory', 'emoji': '💾'},
          {'left': 'Hard Disk', 'right': 'Storage', 'emoji': '📦'},
          {'left': 'Monitor', 'right': 'Output Device', 'emoji': '🖥️'},
          {'left': 'Keyboard', 'right': 'Input Device', 'emoji': '⌨️'},
        ],
      },
    },
    {
      'level': 3,
      'title': 'Operating Systems',
      'subject': 'Computer',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Windows is a ____ Operating System.',
            'options': ['GUI', 'CUI', 'CLI'],
            'ans': 'GUI',
          },
          {
            'text': 'Linux is an ____ source Operating System.',
            'options': ['Open', 'Closed', 'Private'],
            'ans': 'Open',
          },
          {
            'text': 'POST stands for ____.',
            'options': ['Power On Self Test', 'Private Office', 'Post Office'],
            'ans': 'Power On Self Test',
          },
          {
            'text': 'Which of these is a mobile OS?',
            'options': ['Android', 'Windows 10', 'macOS'],
            'ans': 'Android',
          },
          {
            'text': 'BIOS is stored in ____.',
            'options': ['ROM', 'RAM', 'Hard Disk'],
            'ans': 'ROM',
          },
        ],
      },
    },
    {
      'level': 4,
      'title': 'Algorithms',
      'subject': 'Computer',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Input', 'right': 'Start of process', 'emoji': '📥'},
          {'left': 'Output', 'right': 'Result of process', 'emoji': '📤'},
          {'left': 'Algorithm', 'right': 'Step-by-step', 'emoji': '🪜'},
          {'left': 'Flowchart', 'right': 'Diagrammatic', 'emoji': '📊'},
          {'left': 'Pseudocode', 'right': 'English-like', 'emoji': '📝'},
        ],
      },
    },
    {
      'level': 5,
      'title': 'C++ Intro',
      'subject': 'Computer',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Which keyword is used for output in C++?',
            'options': ['cout', 'cin', 'print'],
            'ans': 'cout',
          },
          {
            'text': 'C++ was developed by ____.',
            'options': ['Bjarne Stroustrup', 'Dennis Ritchie', 'James Gosling'],
            'ans': 'Bjarne Stroustrup',
          },
          {
            'text': 'Every C++ statement ends with a ____.',
            'options': [';', '.', ','],
            'ans': ';',
          },
          {
            'text': 'Header file for input/output is ____.',
            'options': ['iostream', 'stdio.h', 'conio.h'],
            'ans': 'iostream',
          },
          {
            'text': 'The main function returns ____ type.',
            'options': ['int', 'void', 'float'],
            'ans': 'int',
          },
        ],
      },
    },
  ],
};

final Map<String, List<Map<String, dynamic>>> std12Topics = {
  'Advanced Tamil': [
    {
      'level': 1,
      'title': 'Sangam Literature',
      'subject': 'Tamil',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'சங்க இலக்கியங்கள் ____ என அழைக்கப்படுகின்றன.',
            'options': ['சான்றோர் செய்யுள்', 'தனிப்பாடல்', 'புதுக்கவிதை'],
            'ans': 'சான்றோர் செய்யுள்',
          },
          {
            'text': 'ஒன்று திரட்டி வரிசைப்படுத்தியது ____ எனப்படும்.',
            'options': ['தொகை', 'பாட்டு', 'மடல்'],
            'ans': 'தொகை',
          },
          {
            'text':
                'சங்க இலக்கிய மரபில் ____ மிக முக்கியமானதாக கருதப்படுகிறது.',
            'options': ['அகம் மற்றும் புறம்', 'நேரிசை', 'பஃறொடை'],
            'ans': 'அகம் மற்றும் புறம்',
          },
          {
            'text': 'எட்டுத்தொகை நூல்களுள் முதலாவதாக அமைந்த நூல் ____.',
            'options': ['நற்றிணை', 'குறுந்தொகை', 'கலித்தொகை'],
            'ans': 'நற்றிணை',
          },
          {
            'text': 'சங்க இலக்கியங்களில் ____ பயின்று வருகிறது.',
            'options': ['ஆசிரியப்பா', 'வெண்பா', 'வஞ்சிப்பா'],
            'ans': 'ஆசிரியப்பா',
          },
        ],
      },
    },
    {
      'level': 2,
      'title': 'Epic Studies',
      'subject': 'Tamil',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'சிலப்பதிகாரம்', 'right': 'இளங்கோவடிகள்', 'emoji': '📜'},
          {'left': 'மணிமேகலை', 'right': 'சீத்தலைச் சாத்தனார்', 'emoji': '📜'},
          {
            'left': 'சீவக சிந்தாமணி',
            'right': 'திருத்தக்க தேவர்',
            'emoji': '💎',
          },
          {
            'left': 'வளையாபதி',
            'right': 'ஆசிரியர் பெயர் தெரியவில்லை',
            'emoji': '💍',
          },
          {'left': 'குண்டலகேசி', 'right': 'நாதகுத்தனார்', 'emoji': '🔊'},
        ],
      },
    },
    {
      'level': 3,
      'title': 'Advanced Grammar',
      'subject': 'Tamil',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'பகுபத உறுப்புகள் ____ வகைப்படும்.',
            'options': ['ஆறு', 'நான்கு', 'ஐந்து'],
            'ans': 'ஆறு',
          },
          {
            'text': 'ஒரு சொல்லின் முதலில் அமைவது ____ ஆகும்.',
            'options': ['பகுதி', 'விகுதி', 'இடைநிலை'],
            'ans': 'பகுதி',
          },
          {
            'text': 'வினைமுற்றின் இறுதியில் நிற்பது ____.',
            'options': ['விகுதி', 'சந்தி', 'சாரியை'],
            'ans': 'விகுதி',
          },
          {
            'text': 'சொற்களின் இடையில் வருவது ____.',
            'options': ['இடைநிலை', 'பகுதி', 'விகுதி'],
            'ans': 'இடைநிலை',
          },
          {
            'text': 'பகுதிக்கும் இடைநிலைக்கும் இடையில் வருவது ____.',
            'options': ['சந்தி', 'சாரியை', 'விகுதி'],
            'ans': 'சந்தி',
          },
        ],
      },
    },
    {
      'level': 4,
      'title': 'Tamil Heritage',
      'subject': 'Tamil',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {
            'left': 'தஞ்சை பெரிய கோவில்',
            'right': 'ராஜராஜ சோழன்',
            'emoji': '🕍',
          },
          {'left': 'கல்லணை', 'right': 'கரிகாலன்', 'emoji': '🌊'},
          {
            'left': 'மதுரை மீனாட்சி அம்மன் கோவில்',
            'right': 'பாண்டியர்',
            'emoji': '🛕',
          },
          {'left': 'மாமல்லபுரம் சிற்பங்கள்', 'right': 'பல்லவர்', 'emoji': '🗿'},
          {
            'left': 'கங்கை கொண்ட சோழபுரம்',
            'right': 'முதலாம் ராஜேந்திரன்',
            'emoji': '🏯',
          },
        ],
      },
    },
    {
      'level': 5,
      'title': 'Creative Writing',
      'subject': 'Tamil',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'பாரதியார் ஒரு ____ கவிஞர்.',
            'options': ['விடுதலை', 'தாலாட்டு', 'இயற்கை'],
            'ans': 'விடுதலை',
          },
          {
            'text': 'புதுக்கவிதையின் தந்தை எனப்படுபவர் ____.',
            'options': ['ந. பிச்சமூர்த்தி', 'கண்ணதாசன்', 'வைரமுத்து'],
            'ans': 'ந. பிச்சமூர்த்தி',
          },
          {
            'text': 'சிறுகதை மன்னன் என அழைக்கப்படுபவர் ____.',
            'options': ['புதுமைப்பித்தன்', 'அசோகமித்திரன்', 'சுஜாதா'],
            'ans': 'புதுமைப்பித்தன்',
          },
          {
            'text': 'வானம்பாடி கவிஞர்களுக்குள் ஒருவர் ____.',
            'options': ['சிற்பி பாலசுப்ரமணியம்', 'கம்பர்', 'ஒட்டக்கூத்தர்'],
            'ans': 'சிற்பி பாலசுப்ரமணியம்',
          },
          {
            'text': 'தமிழகத்தின் வேர்ட்ஸ்வொர்த் எனப்படுபவர் ____.',
            'options': ['வாணிதாசன்', 'சுரதா', 'முடியரசன்'],
            'ans': 'வாணிதாசன்',
          },
        ],
      },
    },
  ],
  'Advanced Mathematics': [
    {
      'level': 1,
      'title': 'Complex Numbers',
      'subject': 'Maths',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Value of i² is ____.',
            'options': ['-1', '1', '0'],
            'ans': '-1',
          },
          {
            'text': 'The conjugate of a + ib is ____.',
            'options': ['a - ib', 'a + ib', 'ib - a'],
            'ans': 'a - ib',
          },
          {
            'text': 'Modulus of 3 + 4i is ____.',
            'options': ['5', '7', '25'],
            'ans': '5',
          },
          {
            'text': 'Value of i⁴ is ____.',
            'options': ['1', '-1', 'i'],
            'ans': '1',
          },
          {
            'text': 'Polar form of a complex number involves r and ____.',
            'options': ['θ', 'x', 'y'],
            'ans': 'θ',
          },
        ],
      },
    },
    {
      'level': 2,
      'title': 'Vector Algebra',
      'subject': 'Maths',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Dot Product', 'right': 'Scalar', 'emoji': '⚫'},
          {'left': 'Cross Product', 'right': 'Vector', 'emoji': '✖️'},
          {'left': 'Unit Vector', 'right': 'Magnitude 1', 'emoji': '1️⃣'},
          {'left': 'Null Vector', 'right': 'Magnitude 0', 'emoji': '0️⃣'},
          {'left': 'a . b', 'right': 'ab cos θ', 'emoji': '📐'},
        ],
      },
    },
    {
      'level': 3,
      'title': 'Differentiation',
      'subject': 'Maths',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'd/dx (sin x) = ____.',
            'options': ['cos x', '-cos x', 'tan x'],
            'ans': 'cos x',
          },
          {
            'text': 'd/dx (eˣ) = ____.',
            'options': ['eˣ', 'xeˣ⁻¹', 'log x'],
            'ans': 'eˣ',
          },
          {
            'text': 'd/dx (log x) = ____.',
            'options': ['1/x', 'x', 'eˣ'],
            'ans': '1/x',
          },
          {
            'text': 'd/dx (tan x) = ____.',
            'options': ['sec²x', 'sec x', 'cot x'],
            'ans': 'sec²x',
          },
          {
            'text': 'Slope of a curve at a point is given by ____.',
            'options': ['dy/dx', '∫y dx', 'y²'],
            'ans': 'dy/dx',
          },
        ],
      },
    },
    {
      'level': 4,
      'title': 'Integration',
      'subject': 'Maths',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': '∫ sin x dx', 'right': '-cos x', 'emoji': '📉'},
          {'left': '∫ cos x dx', 'right': 'sin x', 'emoji': '📈'},
          {'left': '∫ 1/x dx', 'right': 'log x', 'emoji': '🪵'},
          {'left': '∫ eˣ dx', 'right': 'eˣ', 'emoji': '⚡'},
          {'left': '∫ sec²x dx', 'right': 'tan x', 'emoji': '📐'},
        ],
      },
    },
    {
      'level': 5,
      'title': 'Discrete Maths',
      'subject': 'Maths',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Number of truth values in a statement is ____.',
            'options': ['2', '1', 'infinite'],
            'ans': '2',
          },
          {
            'text': 'p ∧ q is true only if ____.',
            'options': ['both are true', 'one is true', 'both are false'],
            'ans': 'both are true',
          },
          {
            'text': 'The negation of "True" is ____.',
            'options': ['False', 'True', 'Maybe'],
            'ans': 'False',
          },
          {
            'text': 'p ∨ q is false only if ____.',
            'options': ['both are false', 'one is false', 'both are true'],
            'ans': 'both are false',
          },
          {
            'text': 'A tautology is always ____.',
            'options': ['True', 'False', 'Neutral'],
            'ans': 'True',
          },
        ],
      },
    },
  ],
  'Electro-Physics': [
    {
      'level': 1,
      'title': 'Electrostatics',
      'subject': 'Physics',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Coulomb force F = k q1q2 / ____.',
            'options': ['r²', 'r', 'r³'],
            'ans': 'r²',
          },
          {
            'text': 'SI unit of Electric Field is ____.',
            'options': ['N/C', 'Volt', 'Ampere'],
            'ans': 'N/C',
          },
          {
            'text': 'Capacity of a capacitor is C = ____.',
            'options': ['Q/V', 'QV', 'V/Q'],
            'ans': 'Q/V',
          },
          {
            'text': 'Unit of Capacitance is ____.',
            'options': ['Farad', 'Henry', 'Ohm'],
            'ans': 'Farad',
          },
          {
            'text': 'Electric potential at a point is a ____ quantity.',
            'options': ['scalar', 'vector', 'tensor'],
            'ans': 'scalar',
          },
        ],
      },
    },
    {
      'level': 2,
      'title': 'Current Electricity',
      'subject': 'Physics',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Ohm\'s Law', 'right': 'V = IR', 'emoji': '💡'},
          {'left': 'Resistivity', 'right': 'Ohm-meter', 'emoji': '🔌'},
          {'left': 'Conductance', 'right': 'Siemen', 'emoji': '⚡'},
          {
            'left': 'Kirchhoff Current Law',
            'right': 'Sum of I = 0',
            'emoji': '➕',
          },
          {
            'left': 'Wheatstone Bridge',
            'right': 'Unknown Resistance',
            'emoji': '🌉',
          },
        ],
      },
    },
    {
      'level': 3,
      'title': 'Magnetism',
      'subject': 'Physics',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Magnetic field exists around a ____ wire.',
            'options': ['current-carrying', 'wooden', 'plastic'],
            'ans': 'current-carrying',
          },
          {
            'text': 'Unit of Magnetic Flux is ____.',
            'options': ['Weber', 'Tesla', 'Gauss'],
            'ans': 'Weber',
          },
          {
            'text': 'Lorentz Force F = q(v x ____).',
            'options': ['B', 'E', 'A'],
            'ans': 'B',
          },
          {
            'text': 'Cyclotron is used to accelerate ____.',
            'options': ['charged particles', 'neutrons', 'photons'],
            'ans': 'charged particles',
          },
          {
            'text': 'Self-inductance unit is ____.',
            'options': ['Henry', 'Watt', 'Volt'],
            'ans': 'Henry',
          },
        ],
      },
    },
    {
      'level': 4,
      'title': 'Optics',
      'subject': 'Physics',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Concave Mirror', 'right': 'Converging', 'emoji': '🪞'},
          {'left': 'Convex Lens', 'right': 'Converging', 'emoji': '🔍'},
          {
            'left': 'Total Internal Reflection',
            'right': 'Optical Fiber',
            'emoji': '🧶',
          },
          {'left': 'Dispersion', 'right': 'Prism', 'emoji': '🌈'},
          {'left': 'Interference', 'right': 'Young\'s Slits', 'emoji': '⏸️'},
        ],
      },
    },
    {
      'level': 5,
      'title': 'Dual Nature',
      'subject': 'Physics',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Light behaves as both wave and ____.',
            'options': ['particle', 'solid', 'liquid'],
            'ans': 'particle',
          },
          {
            'text': 'Energy of photon E = ____.',
            'options': ['hν', 'mc²', '½mv²'],
            'ans': 'hν',
          },
          {
            'text': 'Photoelectric effect was explained by ____.',
            'options': ['Einstein', 'Newton', 'Maxwell'],
            'ans': 'Einstein',
          },
          {
            'text': 'De Broglie wavelength λ = h / ____.',
            'options': ['p', 'E', 'c'],
            'ans': 'p',
          },
          {
            'text': 'Threshold frequency depends on ____.',
            'options': ['metal surface', 'intensity', 'light speed'],
            'ans': 'metal surface',
          },
        ],
      },
    },
  ],
  'Advanced Chemistry': [
    {
      'level': 1,
      'title': 'Solid State',
      'subject': 'Chemistry',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Which of these is a crystalline solid?',
            'options': ['Diamond', 'Glass', 'Plastic'],
            'ans': 'Diamond',
          },
          {
            'text': 'Unit cell of NaCl is ____.',
            'options': ['FCC', 'BCC', 'SC'],
            'ans': 'FCC',
          },
          {
            'text': 'Number of atoms in a BCC unit cell is ____.',
            'options': ['2', '1', '4'],
            'ans': '2',
          },
          {
            'text': 'Coordination number of NaCl is ____.',
            'options': ['6', '8', '12'],
            'ans': '6',
          },
          {
            'text': 'Amorphous solids are also called ____ liquids.',
            'options': ['supercooled', 'superheated', 'saturated'],
            'ans': 'supercooled',
          },
        ],
      },
    },
    {
      'level': 2,
      'title': 'Surface Chemistry',
      'subject': 'Chemistry',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Adsorption', 'right': 'Surface phenomenon', 'emoji': '💧'},
          {'left': 'Absorption', 'right': 'Bulk phenomenon', 'emoji': '🧽'},
          {
            'left': 'Tyndall Effect',
            'right': 'Scattering of light',
            'emoji': '🔦',
          },
          {'left': 'Emulsion', 'right': 'Liquid in liquid', 'emoji': '🧴'},
          {'left': 'Catalyst', 'right': 'Speeds up reaction', 'emoji': '⏩'},
        ],
      },
    },
    {
      'level': 3,
      'title': 'd-Block Elements',
      'subject': 'Chemistry',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Iron (Fe) is a ____ element.',
            'options': ['transition', 'noble', 'alkali'],
            'ans': 'transition',
          },
          {
            'text': 'Which element is liquid at room temperature?',
            'options': ['Mercury', 'Iron', 'Copper'],
            'ans': 'Mercury',
          },
          {
            'text': 'Highest oxidation state of Manganese is ____.',
            'options': ['+7', '+2', '+4'],
            'ans': '+7',
          },
          {
            'text': 'Magnetic moment depends on number of ____ electrons.',
            'options': ['unpaired', 'paired', 'total'],
            'ans': 'unpaired',
          },
          {
            'text': 'Lanthanoid contraction causes ____ radius to decrease.',
            'options': ['atomic', 'nuclear', 'electron'],
            'ans': 'atomic',
          },
        ],
      },
    },
    {
      'level': 4,
      'title': 'Oganic Chemistry',
      'subject': 'Chemistry',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Alcohol', 'right': '-OH group', 'emoji': '🧪'},
          {'left': 'Aldehyde', 'right': '-CHO group', 'emoji': '🧪'},
          {'left': 'Carboxylic Acid', 'right': '-COOH group', 'emoji': '🍋'},
          {'left': 'Ketone', 'right': '>C=O group', 'emoji': '🧪'},
          {'left': 'Ether', 'right': '-O- group', 'emoji': '💨'},
        ],
      },
    },
    {
      'level': 5,
      'title': 'Biomolecules',
      'subject': 'Chemistry',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Glucose is a ____.',
            'options': ['Carbohydrate', 'Protein', 'Lipid'],
            'ans': 'Carbohydrate',
          },
          {
            'text': 'Proteins are polymers of ____.',
            'options': ['amino acids', 'nucleotides', 'sugars'],
            'ans': 'amino acids',
          },
          {
            'text': 'DNA has a ____ helix structure.',
            'options': ['double', 'single', 'triple'],
            'ans': 'double',
          },
          {
            'text': 'Vitamin C is also known as ____ acid.',
            'options': ['Ascorbic', 'Citric', 'Acetic'],
            'ans': 'Ascorbic',
          },
          {
            'text': 'Enzymes are biological ____.',
            'options': ['catalysts', 'hormones', 'toxins'],
            'ans': 'catalysts',
          },
        ],
      },
    },
  ],
  'Python Mastery': [
    {
      'level': 1,
      'title': 'Object Oriented',
      'subject': 'Computer',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Keyword to define a class in Python is ____.',
            'options': ['class', 'def', 'object'],
            'ans': 'class',
          },
          {
            'text': 'The first argument of every method in a class is ____.',
            'options': ['self', 'this', 'cls'],
            'ans': 'self',
          },
          {
            'text':
                'Inheritance allows a class to derive properties from a ____ class.',
            'options': ['parent', 'child', 'sibling'],
            'ans': 'parent',
          },
          {
            'text': '____ is the process of hiding internal details.',
            'options': ['Encapsulation', 'Polymorphism', 'Inheritance'],
            'ans': 'Encapsulation',
          },
          {
            'text': 'A constructor in Python is defined using ____ method.',
            'options': ['__init__', '__new__', '__start__'],
            'ans': '__init__',
          },
        ],
      },
    },
    {
      'level': 2,
      'title': 'Data Structures',
      'subject': 'Computer',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'List', 'right': 'Mutable', 'emoji': '📝'},
          {'left': 'Tuple', 'right': 'Immutable', 'emoji': '🔒'},
          {'left': 'Set', 'right': 'Unordered', 'emoji': '🔢'},
          {'left': 'Dictionary', 'right': 'Key-Value', 'emoji': '📖'},
          {'left': 'String', 'right': 'Sequence', 'emoji': '🧵'},
        ],
      },
    },
    {
      'level': 3,
      'title': 'SQL Basics',
      'subject': 'Computer',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'SQL command to retrieve data is ____.',
            'options': ['SELECT', 'READ', 'GET'],
            'ans': 'SELECT',
          },
          {
            'text': 'To remove all records from a table, use ____.',
            'options': ['DELETE', 'REMOVE', 'DROP'],
            'ans': 'DELETE',
          },
          {
            'text': '____ clause is used to filter records.',
            'options': ['WHERE', 'FROM', 'IF'],
            'ans': 'WHERE',
          },
          {
            'text': 'To add a new record, use ____ command.',
            'options': ['INSERT', 'ADD', 'CREATE'],
            'ans': 'INSERT',
          },
          {
            'text': 'Primary ____ uniquely identifies a record.',
            'options': ['Key', 'Value', 'Index'],
            'ans': 'Key',
          },
        ],
      },
    },
    {
      'level': 4,
      'title': 'Computer Networks',
      'subject': 'Computer',
      'term': 1,
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'LAN', 'right': 'Local Area Network', 'emoji': '🏠'},
          {'left': 'WAN', 'right': 'Wide Area Network', 'emoji': '🌍'},
          {'left': 'HTTP', 'right': 'Web Protocol', 'emoji': '🌐'},
          {'left': 'IP Address', 'right': 'Identity on Network', 'emoji': '🆔'},
          {'left': 'TCP', 'right': 'Transmission Control', 'emoji': '⚙️'},
        ],
      },
    },
    {
      'level': 5,
      'title': 'Web Technologies',
      'subject': 'Computer',
      'term': 1,
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'HTML stands for HyperText ____ Language.',
            'options': ['Markup', 'Machine', 'Modern'],
            'ans': 'Markup',
          },
          {
            'text': '____ is used for styling web pages.',
            'options': ['CSS', 'HSS', 'PHP'],
            'ans': 'CSS',
          },
          {
            'text': 'JavaScript is a ____-side scripting language.',
            'options': ['client', 'server', 'database'],
            'ans': 'client',
          },
          {
            'text': 'Django is a framework for ____.',
            'options': ['Python', 'Java', 'C++'],
            'ans': 'Python',
          },
          {
            'text': 'A URL is a Uniform Resource ____.',
            'options': ['Locator', 'Link', 'Language'],
            'ans': 'Locator',
          },
        ],
      },
    },
  ],
};

final List<Map<String, dynamic>> seniorContent = [
  // COMPUTER
  {
    'title': 'C++ Basics',
    'subject': 'Computer',
    'term': 1,
    'description': 'Learn syntax of C++',
    'type': 'fill_blanks',
    'category': 'gaming',
    'data': {
      'questions': [
        {
          'text': '#include <____>',
          'options': ['iostream', 'stdlib', 'stdio'],
          'ans': 'iostream',
        },
      ],
    },
  },
  {
    'title': 'Logic Gates',
    'subject': 'Computer',
    'term': 2,
    'description': 'Learn about AND, OR, NOT gates',
    'type': 'match',
    'category': 'gaming',
    'data': {
      'pairs': [
        {'left': 'AND', 'right': 'Multiplication', 'emoji': '🔢'},
        {'left': 'OR', 'right': 'Addition', 'emoji': '➕'},
      ],
    },
  },
  // PHYSICS
  {
    'title': 'Electrostatics',
    'subject': 'Physics',
    'term': 1,
    'description': 'Study of stationary charges.',
    'type': 'fill_blanks',
    'category': 'gaming',
    'data': {
      'questions': [
        {
          'text': 'SI unit of charge is ____',
          'options': ['Coulomb', 'Volt', 'Ampere'],
          'ans': 'Coulomb',
        },
      ],
    },
  },
  {
    'title': 'Optics',
    'subject': 'Physics',
    'term': 2,
    'description': 'Study of light and reflection.',
    'type': 'match',
    'category': 'gaming',
    'data': {
      'pairs': [
        {'left': 'Mirror', 'right': 'Reflection', 'emoji': '🪞'},
        {'left': 'Lens', 'right': 'Refraction', 'emoji': '🔍'},
      ],
    },
  },
  // CHEMISTRY
  {
    'title': 'Atomic Structure',
    'subject': 'Chemistry',
    'term': 1,
    'description': 'Protons, Neutrons, Electrons.',
    'type': 'fill_blanks',
    'category': 'gaming',
    'data': {
      'questions': [
        {
          'text': 'Nucleus contains protons and ____',
          'options': ['electrons', 'neutrons', 'photons'],
          'ans': 'neutrons',
        },
      ],
    },
  },
  {
    'title': 'Organic Chemistry',
    'subject': 'Chemistry',
    'term': 2,
    'description': 'Hydrocarbons and bonds.',
    'type': 'match',
    'category': 'gaming',
    'data': {
      'pairs': [
        {'left': 'Methane', 'right': 'CH4', 'emoji': '🔥'},
        {'left': 'Ethane', 'right': 'C2H6', 'emoji': '⚗️'},
      ],
    },
  },
  // MATHS
  {
    'title': 'Trigonometry',
    'subject': 'Maths',
    'term': 1,
    'description': 'Sines and Cosines.',
    'type': 'fill_blanks',
    'category': 'gaming',
    'data': {
      'questions': [
        {
          'text': 'sin²θ + cos²θ = ____',
          'options': ['0', '1', '2'],
          'ans': '1',
        },
      ],
    },
  },
  {
    'title': 'Calculus',
    'subject': 'Maths',
    'term': 2,
    'description': 'Differentiation and Integration.',
    'type': 'match',
    'category': 'gaming',
    'data': {
      'pairs': [
        {'left': 'd/dx', 'right': 'Derivative', 'emoji': '📈'},
        {'left': '∫', 'right': 'Integral', 'emoji': '📉'},
      ],
    },
  },
  // TAMIL
  {
    'title': 'Tamil Literature',
    'subject': 'Tamil',
    'term': 1,
    'description': 'Classical Tamil works.',
    'type': 'fill_blanks',
    'category': 'gaming',
    'data': {
      'questions': [
        {
          'text': 'திருக்குறளை இயற்றியவர் ____',
          'options': ['கம்பர்', 'திருவள்ளுவர்', 'பாரதியார்'],
          'ans': 'திருவள்ளுவர்',
        },
      ],
    },
  },
];
