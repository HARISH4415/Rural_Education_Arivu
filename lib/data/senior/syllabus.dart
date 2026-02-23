final Map<String, List<Map<String, dynamic>>> seniorTopics = {
  'Algebra Mastery': [
    {
      'level': 1,
      'title': 'Linear Equations 1',
      'subject': 'Maths',
      'description': 'Solve simple linear equations.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'x + 5 = 10, then x = ?',
            'options': ['5', '10', '15'],
            'ans': '5',
          },
          {
            'text': '2x = 12, then x = ?',
            'options': ['4', '6', '8'],
            'ans': '6',
          },
        ],
      },
    },
    {
      'level': 2,
      'title': 'Linear Equations 2',
      'subject': 'Maths',
      'description': 'More complex equations.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': '3x + 1 = 10, then x = ?',
            'options': ['2', '3', '4'],
            'ans': '3',
          },
          {
            'text': '5x - 2 = 18, then x = ?',
            'options': ['4', '5', '6'],
            'ans': '4',
          },
        ],
      },
    },
    {
      'level': 3,
      'title': 'Variables & Constants',
      'subject': 'Maths',
      'description': 'Identify terms in an expression.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': '3x', 'right': 'Variable Term', 'emoji': '✖️'},
          {'left': '5', 'right': 'Constant', 'emoji': '💎'},
          {'left': '2y', 'right': 'Variable Term', 'emoji': '✖️'},
          {'left': '10', 'right': 'Constant', 'emoji': '💎'},
        ],
      },
    },
    {
      'level': 4,
      'title': 'Powers & Exponents',
      'subject': 'Maths',
      'description': 'Understand exponential notation.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': '2 to the power of 3 is ____',
            'options': ['6', '8', '10'],
            'ans': '8',
          },
          {
            'text': '10 squared is ____',
            'options': ['20', '100', '1000'],
            'ans': '100',
          },
        ],
      },
    },
    {
      'level': 5,
      'title': 'Algebraic Identities',
      'subject': 'Maths',
      'description': 'Complete the identity.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': '(a + b)² = a² + 2ab + ____',
            'options': ['b', 'b²', '2b'],
            'ans': 'b²',
          },
          {
            'text': 'a² - b² = (a + b)(____)',
            'options': ['a + b', 'a - b', 'ab'],
            'ans': 'a - b',
          },
        ],
      },
    },
  ],
  'Scientific Discovery': [
    {
      'level': 1,
      'title': 'Planetary Features',
      'subject': 'Science',
      'description': 'Match the planet with its feature.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Mars', 'right': 'Red Planet', 'emoji': '🪐'},
          {'left': 'Jupiter', 'right': 'Largest Planet', 'emoji': '🟠'},
          {'left': 'Venus', 'right': 'Hottest Planet', 'emoji': '🔥'},
        ],
      },
    },
    {
      'level': 2,
      'title': 'States of Matter',
      'subject': 'Science',
      'description': 'Classify into Solid, Liquid, Gas.',
      'type': 'drag_drop',
      'data': {
        'categories': ['Solid', 'Liquid', 'Gas'],
        'items': [
          {'name': 'Ice', 'cat': 'Solid'},
          {'name': 'Water', 'cat': 'Liquid'},
          {'name': 'Steam', 'cat': 'Gas'},
          {'name': 'Stone', 'cat': 'Solid'},
        ],
      },
    },
    {
      'level': 3,
      'title': 'Periodic Elements',
      'subject': 'Science',
      'description': 'Match element symbols.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'H', 'right': 'Hydrogen', 'emoji': '💧'},
          {'left': 'O', 'right': 'Oxygen', 'emoji': '🌬️'},
          {'left': 'Au', 'right': 'Gold', 'emoji': '🥇'},
        ],
      },
    },
    {
      'level': 4,
      'title': 'Human Anatomy',
      'subject': 'Science',
      'description': 'Match organs to systems.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Heart', 'right': 'Circulatory', 'emoji': '❤️'},
          {'left': 'Lungs', 'right': 'Respiratory', 'emoji': '🫁'},
          {'left': 'Brain', 'right': 'Nervous', 'emoji': '🧠'},
          {'left': 'Stomach', 'right': 'Digestive', 'emoji': '🥣'},
        ],
      },
    },
    {
      'level': 5,
      'title': 'Laws of Motion',
      'subject': 'Science',
      'description': 'Newton\'s laws of physics.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Force = Mass x ____',
            'options': ['Velocity', 'Acceleration', 'Speed'],
            'ans': 'Acceleration',
          },
          {
            'text': 'Every action has an equal and opposite ____',
            'options': ['Motion', 'Force', 'Reaction'],
            'ans': 'Reaction',
          },
        ],
      },
    },
  ],
  'Grammar & Words': [
    {
      'level': 1,
      'title': 'Opposite Concepts',
      'subject': 'English',
      'description': 'Match words with opposite meanings.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Hot', 'right': 'Cold', 'emoji': '❄️'},
          {'left': 'Fast', 'right': 'Slow', 'emoji': '🐢'},
          {'left': 'High', 'right': 'Low', 'emoji': '⬇️'},
        ],
      },
    },
    {
      'level': 2,
      'title': 'Verb Tenses',
      'subject': 'English',
      'description': 'Choose the correct verb form.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'She ____ to school.',
            'options': ['go', 'goes', 'going'],
            'ans': 'goes',
          },
          {
            'text': 'They ____ playing.',
            'options': ['is', 'are', 'am'],
            'ans': 'are',
          },
        ],
      },
    },
    {
      'level': 3,
      'title': 'Synonyms',
      'subject': 'English',
      'description': 'Match words with similar meanings.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Happy', 'right': 'Joyful', 'emoji': '😄'},
          {'left': 'Smart', 'right': 'Intelligent', 'emoji': '🧠'},
          {'left': 'Big', 'right': 'Enormous', 'emoji': '🐘'},
          {'left': 'Small', 'right': 'Tiny', 'emoji': '🐜'},
        ],
      },
    },
    {
      'level': 4,
      'title': 'Idioms & Phrases',
      'subject': 'English',
      'description': 'Match idioms to meanings.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Piece of cake', 'right': 'Very easy', 'emoji': '🍰'},
          {'left': 'Under the weather', 'right': 'Feeling sick', 'emoji': '🤒'},
          {'left': 'Break a leg', 'right': 'Good luck', 'emoji': '🍀'},
        ],
      },
    },
    {
      'level': 5,
      'title': 'Sentence Types',
      'subject': 'English',
      'description': 'Identify the sentence type.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'What is your name? is an ____ sentence.',
            'options': ['Assertive', 'Interrogative', 'Exclamatory'],
            'ans': 'Interrogative',
          },
          {
            'text': 'Stop the car! is an ____ sentence.',
            'options': ['Imperative', 'Declarative', 'Optative'],
            'ans': 'Imperative',
          },
        ],
      },
    },
  ],
};

final List<Map<String, dynamic>> seniorContent = [
  // MATHEMATICS
  {
    'title': 'Linear Equations',
    'subject': 'Maths',
    'description': 'Solve simple linear equations.',
    'type': 'fill_blanks',
    'category': 'gaming',
    'data': {
      'questions': [
        {
          'text': 'x + 5 = 10, then x = ?',
          'options': ['5', '10', '15'],
          'ans': '5',
        },
        {
          'text': '2x = 12, then x = ?',
          'options': ['4', '6', '8'],
          'ans': '6',
        },
        {
          'text': '3x + 1 = 10, then x = ?',
          'options': ['2', '3', '4'],
          'ans': '3',
        },
      ],
    },
  },
  {
    'title': 'Fractions & Decimals',
    'subject': 'Maths',
    'description': 'Convert fractions to decimals.',
    'type': 'match',
    'category': 'gaming',
    'data': {
      'pairs': [
        {'left': '1/2', 'right': '0.5', 'emoji': '½'},
        {'left': '1/4', 'right': '0.25', 'emoji': '¼'},
        {'left': '3/4', 'right': '0.75', 'emoji': '¾'},
        {'left': '1/10', 'right': '0.1', 'emoji': '⅒'},
        {'left': '1/5', 'right': '0.2', 'emoji': '⅕'},
      ],
    },
  },
  {
    'title': 'Geometry Shapes',
    'subject': 'Maths',
    'description': 'Identify geometric shapes.',
    'type': 'match',
    'category': 'gaming',
    'data': {
      'pairs': [
        {'left': 'Triangle', 'right': '3 Sides', 'emoji': '🔺'},
        {'left': 'Quadrilateral', 'right': '4 Sides', 'emoji': '⬛'},
        {'left': 'Pentagon', 'right': '5 Sides', 'emoji': '⬠'},
        {'left': 'Hexagon', 'right': '6 Sides', 'emoji': '⬡'},
        {'left': 'Octagon', 'right': '8 Sides', 'emoji': '🛑'},
      ],
    },
  },

  // SCIENCE
  {
    'title': 'Identify the Planet',
    'subject': 'Science',
    'description': 'Match the planet with its feature.',
    'type': 'match',
    'category': 'gaming',
    'data': {
      'pairs': [
        {'left': 'Mars', 'right': 'Red Planet', 'emoji': '🪐'},
        {'left': 'Earth', 'right': 'Blue Planet', 'emoji': '🌍'},
        {'left': 'Jupiter', 'right': 'Largest Planet', 'emoji': '🟠'},
        {'left': 'Saturn', 'right': 'Ring Planet', 'emoji': '💍'},
        {'left': 'Venus', 'right': 'Hottest Planet', 'emoji': '🔥'},
      ],
    },
  },
  {
    'title': 'States of Matter',
    'subject': 'Science',
    'description': 'Classify into Solid, Liquid, Gas.',
    'type': 'drag_drop',
    'category': 'gaming',
    'data': {
      'categories': ['Solid', 'Liquid', 'Gas'],
      'items': [
        {'name': 'Ice', 'cat': 'Solid'},
        {'name': 'Water', 'cat': 'Liquid'},
        {'name': 'Steam', 'cat': 'Gas'},
        {'name': 'Stone', 'cat': 'Solid'},
        {'name': 'Oil', 'cat': 'Liquid'},
      ],
    },
  },
  {
    'title': 'Periodic Table Elements',
    'subject': 'Science',
    'description': 'Match element symbols.',
    'type': 'match',
    'category': 'gaming',
    'data': {
      'pairs': [
        {'left': 'H', 'right': 'Hydrogen', 'emoji': '💧'},
        {'left': 'O', 'right': 'Oxygen', 'emoji': '🌬️'},
        {'left': 'C', 'right': 'Carbon', 'emoji': '⚫'},
        {'left': 'Au', 'right': 'Gold', 'emoji': '🥇'},
        {'left': 'Ag', 'right': 'Silver', 'emoji': '🥈'},
      ],
    },
  },

  // ENGLISH
  {
    'title': 'Antonyms (Opposites)',
    'subject': 'English',
    'description': 'Match words with opposite meanings.',
    'type': 'match',
    'category': 'gaming',
    'data': {
      'pairs': [
        {'left': 'Hot', 'right': 'Cold', 'emoji': '❄️'},
        {'left': 'Fast', 'right': 'Slow', 'emoji': '🐢'},
        {'left': 'High', 'right': 'Low', 'emoji': '⬇️'},
        {'left': 'Rich', 'right': 'Poor', 'emoji': '💰'},
        {'left': 'Day', 'right': 'Night', 'emoji': '🌙'},
      ],
    },
  },
  {
    'title': 'Grammar Quiz',
    'subject': 'English',
    'description': 'Choose the correct verb form.',
    'type': 'fill_blanks',
    'category': 'gaming',
    'data': {
      'questions': [
        {
          'text': 'She ____ to school.',
          'options': ['go', 'goes', 'going'],
          'ans': 'goes',
        },
        {
          'text': 'They ____ playing football.',
          'options': ['is', 'are', 'am'],
          'ans': 'are',
        },
        {
          'text': 'I ____ eating an apple.',
          'options': ['am', 'is', 'are'],
          'ans': 'am',
        },
      ],
    },
  },

  // HISTORY
  {
    'title': 'Famous Monuments',
    'subject': 'History',
    'description': 'Match monument to location.',
    'type': 'match',
    'category': 'gaming',
    'data': {
      'pairs': [
        {'left': 'Taj Mahal', 'right': 'India', 'emoji': '🕌'},
        {'left': 'Eiffel Tower', 'right': 'France', 'emoji': '🗼'},
        {'left': 'Pyramids', 'right': 'Egypt', 'emoji': '🏜️'},
        {'left': 'Statue of Liberty', 'right': 'USA', 'emoji': '🗽'},
        {'left': 'Colosseum', 'right': 'Italy', 'emoji': '🏛️'},
      ],
    },
  },

  // GEOGRAPHY
  {
    'title': 'Country Capitals',
    'subject': 'Geography',
    'description': 'Match country to its capital.',
    'type': 'match',
    'category': 'gaming',
    'data': {
      'pairs': [
        {'left': 'India', 'right': 'New Delhi', 'emoji': '🇮🇳'},
        {'left': 'USA', 'right': 'Washington DC', 'emoji': '🇺🇸'},
        {'left': 'France', 'right': 'Paris', 'emoji': '🇫🇷'},
        {'left': 'Japan', 'right': 'Tokyo', 'emoji': '🇯🇵'},
        {'left': 'UK', 'right': 'London', 'emoji': '🇬🇧'},
      ],
    },
  },
  {
    'title': 'Continents & Oceans',
    'subject': 'Geography',
    'description': 'Identify continents and oceans.',
    'type': 'drag_drop',
    'category': 'gaming',
    'data': {
      'categories': ['Continent', 'Ocean'],
      'items': [
        {'name': 'Asia', 'cat': 'Continent'},
        {'name': 'Pacific', 'cat': 'Ocean'},
        {'name': 'Africa', 'cat': 'Continent'},
        {'name': 'Atlantic', 'cat': 'Ocean'},
        {'name': 'Europe', 'cat': 'Continent'},
      ],
    },
  },

  // TAMIL
  {
    'title': 'Tamil Vocabulary',
    'subject': 'Tamil',
    'description': 'Match Tamil words to English.',
    'type': 'match',
    'category': 'gaming',
    'data': {
      'pairs': [
        {'left': 'அன்பு', 'right': 'Love', 'emoji': '❤️'},
        {'left': 'அறிவு', 'right': 'Knowledge', 'emoji': '🧠'},
        {'left': 'பள்ளி', 'right': 'School', 'emoji': '🏫'},
        {'left': 'நண்பன்', 'right': 'Friend', 'emoji': '🤝'},
        {'left': 'உணவு', 'right': 'Food', 'emoji': '🍲'},
      ],
    },
  },
  {
    'title': 'Thirukkural Quiz',
    'subject': 'Tamil',
    'description': 'Complete the Kural.',
    'type': 'fill_blanks',
    'category': 'gaming',
    'data': {
      'questions': [
        {
          'text': 'அகர முதல ____ எல்லாம்',
          'options': ['எழுத்து', 'சொல்', 'பொருள்'],
          'ans': 'எழுத்து',
        },
        {
          'text': 'கற்க கசடற ____',
          'options': ['கற்பவை', 'நிற்க', 'சொற்க'],
          'ans': 'கற்பவை',
        },
      ],
    },
  },
];
