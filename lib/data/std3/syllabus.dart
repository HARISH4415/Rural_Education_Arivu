// Topic-based structure for Class 3
final Map<String, List<Map<String, dynamic>>> std3Topics = {
  // MATHS TOPICS
  'Multiplication Master': [
    {
      'level': 1,
      'title': 'x2 and x3 Tables',
      'subject': 'Maths',
      'description': 'Basic multiplication.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': '2 x 2 = ____',
            'options': ['4', '6', '8'],
            'ans': '4',
          },
          {
            'text': '3 x 3 = ____',
            'options': ['9', '6', '12'],
            'ans': '9',
          },
          {
            'text': '2 x 5 = ____',
            'options': ['10', '15', '20'],
            'ans': '10',
          },
          {
            'text': '3 x 4 = ____',
            'options': ['12', '14', '16'],
            'ans': '12',
          },
          {
            'text': '2 x 8 = ____',
            'options': ['16', '18', '20'],
            'ans': '16',
          },
        ],
      },
    },
    {
      'level': 2,
      'title': 'x4 and x5 Tables',
      'subject': 'Maths',
      'description': 'Intermediate multiplication.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': '4 x 4 = ____',
            'options': ['16', '20', '24'],
            'ans': '16',
          },
          {
            'text': '5 x 5 = ____',
            'options': ['25', '30', '35'],
            'ans': '25',
          },
          {
            'text': '4 x 6 = ____',
            'options': ['24', '28', '32'],
            'ans': '24',
          },
          {
            'text': '5 x 8 = ____',
            'options': ['40', '45', '35'],
            'ans': '40',
          },
          {
            'text': '4 x 9 = ____',
            'options': ['36', '32', '40'],
            'ans': '36',
          },
        ],
      },
    },
    {
      'level': 3,
      'title': 'Mixed Tables',
      'subject': 'Maths',
      'description': 'Mixed multiplication practice.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': '6 x 2 = ____',
            'options': ['12', '14', '10'],
            'ans': '12',
          },
          {
            'text': '7 x 3 = ____',
            'options': ['21', '24', '18'],
            'ans': '21',
          },
          {
            'text': '8 x 4 = ____',
            'options': ['32', '36', '28'],
            'ans': '32',
          },
          {
            'text': '9 x 5 = ____',
            'options': ['45', '50', '40'],
            'ans': '45',
          },
          {
            'text': '10 x 6 = ____',
            'options': ['60', '50', '70'],
            'ans': '60',
          },
        ],
      },
    },
    {
      'level': 4,
      'title': 'Missing Numbers',
      'subject': 'Maths',
      'description': 'Find the missing factor.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': '2 x ____ = 10',
            'options': ['5', '4', '6'],
            'ans': '5',
          },
          {
            'text': '____ x 3 = 12',
            'options': ['4', '5', '3'],
            'ans': '4',
          },
          {
            'text': '5 x ____ = 25',
            'options': ['5', '4', '6'],
            'ans': '5',
          },
          {
            'text': '____ x 4 = 16',
            'options': ['4', '3', '5'],
            'ans': '4',
          },
          {
            'text': '6 x ____ = 30',
            'options': ['5', '6', '4'],
            'ans': '5',
          },
        ],
      },
    },
    {
      'level': 5,
      'title': 'Word Problems',
      'subject': 'Maths',
      'description': 'Real life multiplication.',
      'type': 'compare',
      'data': {
        'questions': [
          {'q': '2 cars have how many wheels?', 'val1': 8, 'val2': 6, 'ans': 8},
          {
            'q': '3 spiders have how many legs (8 each)?',
            'val1': 24,
            'val2': 16,
            'ans': 24,
          },
          {
            'q': '5 hands have how many fingers?',
            'val1': 25,
            'val2': 20,
            'ans': 25,
          },
          {
            'q': '4 cats have how many legs?',
            'val1': 16,
            'val2': 12,
            'ans': 16,
          },
          {'q': '2 dozen eggs is?', 'val1': 24, 'val2': 12, 'ans': 24},
        ],
      },
    },
  ],

  // ENGLISH TOPICS
  'Opposites': [
    {
      'level': 1,
      'title': 'Simple Pairs',
      'subject': 'English',
      'description': 'Basic opposites.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Hot', 'right': 'Cold', 'emoji': '🔥'},
          {'left': 'Up', 'right': 'Down', 'emoji': '🎈'},
          {'left': 'Day', 'right': 'Night', 'emoji': '🌞'},
          {'left': 'In', 'right': 'Out', 'emoji': '📥'},
          {'left': 'Yes', 'right': 'No', 'emoji': '👍'},
        ],
      },
    },
    {
      'level': 2,
      'title': 'Adjectives',
      'subject': 'English',
      'description': 'Describe opposites.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Big', 'right': 'Small', 'emoji': '🐘'},
          {'left': 'Fast', 'right': 'Slow', 'emoji': '🚀'},
          {'left': 'Tall', 'right': 'Short', 'emoji': '🦒'},
          {'left': 'Heavy', 'right': 'Light', 'emoji': '🏋️'},
          {'left': 'Hard', 'right': 'Soft', 'emoji': '🪨'},
        ],
      },
    },
    {
      'level': 3,
      'title': 'Verbs',
      'subject': 'English',
      'description': 'Action opposites.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Go', 'right': 'Come', 'emoji': '🚶'},
          {'left': 'Laugh', 'right': 'Cry', 'emoji': '😂'},
          {'left': 'Open', 'right': 'Close', 'emoji': '🚪'},
          {'left': 'Give', 'right': 'Take', 'emoji': '🤲'},
          {'left': 'Push', 'right': 'Pull', 'emoji': '🚜'},
        ],
      },
    },
    {
      'level': 4,
      'title': 'Sentences',
      'subject': 'English',
      'description': 'Complete the opposite idea.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Ice is cold, fire is ____.',
            'options': ['hot', 'wet', 'dry'],
            'ans': 'hot',
          },
          {
            'text': 'Needle is sharp, cotton is ____.',
            'options': ['soft', 'hard', 'blunt'],
            'ans': 'soft',
          },
          {
            'text': 'Sun is bright, moon is ____.',
            'options': ['dim', 'dark', 'hot'],
            'ans': 'dim',
          },
          {
            'text': 'Tortoise is slow, rabbit is ____.',
            'options': ['fast', 'lazy', 'heavy'],
            'ans': 'fast',
          },
          {
            'text': 'Giraffe is tall, rat is ____.',
            'options': ['short', 'big', 'long'],
            'ans': 'short',
          },
        ],
      },
    },
    {
      'level': 5,
      'title': 'Complex Pairs',
      'subject': 'English',
      'description': 'Harder opposites.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Success', 'right': 'Failure', 'emoji': '🏆'},
          {'left': 'Create', 'right': 'Destroy', 'emoji': '🔨'},
          {'left': 'Private', 'right': 'Public', 'emoji': '🔒'},
          {'left': 'Ancient', 'right': 'Modern', 'emoji': '🏛️'},
          {'left': 'Import', 'right': 'Export', 'emoji': '🚢'},
        ],
      },
    },
  ],

  // SCIENCE TOPICS
  'The Environment': [
    {
      'level': 1,
      'title': 'Basics',
      'subject': 'Science',
      'description': 'Sun, Moon, and Earth.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'We live on ____.',
            'options': ['Earth', 'Mars', 'Moon'],
            'ans': 'Earth',
          },
          {
            'text': 'The ____ gives us light.',
            'options': ['Sun', 'Moon', 'Star'],
            'ans': 'Sun',
          },
          {
            'text': 'The ____ shines at night.',
            'options': ['Moon', 'Sun', 'Cloud'],
            'ans': 'Moon',
          },
          {
            'text': 'Clouds give us ____.',
            'options': ['Rain', 'Fire', 'Soil'],
            'ans': 'Rain',
          },
          {
            'text': 'Stars are far ____.',
            'options': ['Away', 'Near', 'Below'],
            'ans': 'Away',
          },
        ],
      },
    },
    {
      'level': 2,
      'title': 'Water & Air',
      'subject': 'Science',
      'description': 'Properties of water and air.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'We drink ____.',
            'options': ['Water', 'Oil', 'Milk'],
            'ans': 'Water',
          },
          {
            'text': 'We breathe ____.',
            'options': ['Air', 'Water', 'Sand'],
            'ans': 'Air',
          },
          {
            'text': 'Fish live in ____.',
            'options': ['Water', 'Air', 'Land'],
            'ans': 'Water',
          },
          {
            'text': 'Birds fly in ____.',
            'options': ['Air', 'Water', 'Soil'],
            'ans': 'Air',
          },
          {
            'text': 'Ice is frozen ____.',
            'options': ['Water', 'Milk', 'Juice'],
            'ans': 'Water',
          },
        ],
      },
    },
    {
      'level': 3,
      'title': 'Plants',
      'subject': 'Science',
      'description': 'Parts of plants.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Root', 'right': 'Underground', 'emoji': '🌱'},
          {'left': 'Leaf', 'right': 'Green', 'emoji': '🌿'},
          {'left': 'Flower', 'right': 'Colorful', 'emoji': '🌺'},
          {'left': 'Fruit', 'right': 'Tasty', 'emoji': '🍎'},
          {'left': 'Stem', 'right': 'Support', 'emoji': '🪵'},
        ],
      },
    },
    {
      'level': 4,
      'title': 'Animals',
      'subject': 'Science',
      'description': 'Animal habitats.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Fish', 'right': 'Water', 'emoji': '🐟'},
          {'left': 'Bird', 'right': 'Nest', 'emoji': '🐦'},
          {'left': 'Lion', 'right': 'Den', 'emoji': '🦁'},
          {'left': 'Monkey', 'right': 'Tree', 'emoji': '🐒'},
          {'left': 'Rabbit', 'right': 'Burrow', 'emoji': '🐰'},
        ],
      },
    },
    {
      'level': 5,
      'title': 'Preservation',
      'subject': 'Science',
      'description': 'Protecting nature.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'Do not cut ____.',
            'options': ['Trees', 'Grass', 'Hair'],
            'ans': 'Trees',
          },
          {
            'text': 'Save ____.',
            'options': ['Water', 'Garbage', 'Noise'],
            'ans': 'Water',
          },
          {
            'text': 'Do not pollute ____.',
            'options': ['Air', 'Mind', 'Space'],
            'ans': 'Air',
          },
          {
            'text': 'Plant more ____.',
            'options': ['Trees', 'Plastic', 'Stone'],
            'ans': 'Trees',
          },
          {
            'text': 'Recycle ____.',
            'options': ['Plastic', 'Food', 'Water'],
            'ans': 'Plastic',
          },
        ],
      },
    },
  ],

  // SOCIAL TOPICS
  'Our Country': [
    {
      'level': 1,
      'title': 'National Symbols',
      'subject': 'Social',
      'description': 'Identify national symbols.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Bird', 'right': 'Peacock', 'emoji': '🦚'},
          {'left': 'Animal', 'right': 'Tiger', 'emoji': '🐅'},
          {'left': 'Flower', 'right': 'Lotus', 'emoji': '🪷'},
          {'left': 'Fruit', 'right': 'Mango', 'emoji': '🥭'},
          {'left': 'Tree', 'right': 'Banyan', 'emoji': '🌳'},
        ],
      },
    },
    {
      'level': 2,
      'title': 'Leaders',
      'subject': 'Social',
      'description': 'Famous leaders.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Gandhi', 'right': 'Father of Nation', 'emoji': '👓'},
          {'left': 'Nehru', 'right': 'Chacha', 'emoji': '🌹'},
          {'left': 'Bose', 'right': 'Netaji', 'emoji': '🫡'},
          {'left': 'Patel', 'right': 'Iron Man', 'emoji': '💪'},
          {'left': 'Ambedkar', 'right': 'Constitution', 'emoji': '📜'},
        ],
      },
    },
    {
      'level': 3,
      'title': 'Festivals',
      'subject': 'Social',
      'description': 'Indian festivals.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Diwali', 'right': 'Lights', 'emoji': '🪔'},
          {'left': 'Holi', 'right': 'Colors', 'emoji': '🎨'},
          {'left': 'Pongal', 'right': 'Harvest', 'emoji': '🌾'},
          {'left': 'Christmas', 'right': 'Santa', 'emoji': '🎅'},
          {'left': 'Eid', 'right': 'Moon', 'emoji': '🌙'},
        ],
      },
    },
    {
      'level': 4,
      'title': 'Geography Basics',
      'subject': 'Social',
      'description': 'Landforms.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'Mountain', 'right': 'High', 'emoji': '⛰️'},
          {'left': 'Ocean', 'right': 'Deep', 'emoji': '🌊'},
          {'left': 'Desert', 'right': 'Sand', 'emoji': '🐪'},
          {'left': 'Forest', 'right': 'Trees', 'emoji': '🌲'},
          {'left': 'River', 'right': 'Flowing', 'emoji': '💧'},
        ],
      },
    },
    {
      'level': 5,
      'title': 'Capitals',
      'subject': 'Social',
      'description': 'States and Capitals.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'India', 'right': 'New Delhi', 'emoji': '🇮🇳'},
          {'left': 'Tamil Nadu', 'right': 'Chennai', 'emoji': '🏙️'},
          {'left': 'Kerala', 'right': 'Trivandrum', 'emoji': '🌴'},
          {'left': 'Karnataka', 'right': 'Bangalore', 'emoji': '💻'},
          {'left': 'Maharashtra', 'right': 'Mumbai', 'emoji': '🎬'},
        ],
      },
    },
  ],

  // TAMIL TOPICS
  'Word Games': [
    {
      'level': 1,
      'title': 'Opposites',
      'subject': 'Tamil',
      'description': 'எதிர்ச்சொற்கள்.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'காலை', 'right': 'மாலை', 'emoji': '🌅'},
          {'left': 'உள்', 'right': 'வெளி', 'emoji': '🚪'},
          {'left': 'பகல்', 'right': 'இரவு', 'emoji': '☀️'},
          {'left': 'மேலே', 'right': 'கீழே', 'emoji': '⬆️'},
          {'left': 'வெள்ளை', 'right': 'கருப்பு', 'emoji': '⬜'},
        ],
      },
    },
    {
      'level': 2,
      'title': 'Synonyms',
      'subject': 'Tamil',
      'description': 'Same meaning words.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'அம்மா', 'right': 'தாய்', 'emoji': '🤱'},
          {'left': 'நிலா', 'right': 'சந்திரன்', 'emoji': '🌙'},
          {'left': 'சூரியன்', 'right': 'கதிரவன்', 'emoji': '☀️'},
          {'left': 'மரம்', 'right': 'தரு', 'emoji': '🌳'},
          {'left': 'பூ', 'right': 'மலர்', 'emoji': '🌺'},
        ],
      },
    },
    {
      'level': 3,
      'title': 'Picture Match',
      'subject': 'Tamil',
      'description': 'Match word to picture.',
      'type': 'match',
      'data': {
        'pairs': [
          {'left': 'வீடு', 'right': 'House', 'emoji': '🏠'},
          {'left': 'பள்ளி', 'right': 'School', 'emoji': '🏫'},
          {'left': 'புத்தகம்', 'right': 'Book', 'emoji': '📚'},
          {'left': 'பேனா', 'right': 'Pen', 'emoji': '🖊️'},
          {'left': 'பந்து', 'right': 'Ball', 'emoji': '⚽'},
        ],
      },
    },
    {
      'level': 4,
      'title': 'Fill Blanks',
      'subject': 'Tamil',
      'description': 'Complete the word.',
      'type': 'fill_blanks',
      'data': {
        'questions': [
          {
            'text': 'பாப்____',
            'options': ['பா', 'மா', 'கா'],
            'ans': 'பா',
          },
          {
            'text': 'அம்____',
            'options': ['மா', 'நா', 'தா'],
            'ans': 'மா',
          },
          {
            'text': 'தாத்____',
            'options': ['தா', 'கா', 'பா'],
            'ans': 'தா',
          },
          {
            'text': 'பாட்____',
            'options': ['டி', 'வி', 'சி'],
            'ans': 'டி',
          },
          {
            'text': 'அண்____',
            'options': ['ணன்', 'கன்', 'வன்'],
            'ans': 'ணன்',
          },
        ],
      },
    },
    {
      'level': 5,
      'title': 'Riddles',
      'subject': 'Tamil',
      'description': 'விடுகதைகள்.',
      'type': 'compare',
      'data': {
        'questions': [
          {
            'q': 'காலில்லாதவன் ஓடுவான்? (Runs without legs)',
            'val1': 'River',
            'val2': 'Road',
            'ans': 'River',
          },
          {
            'q':
                'பச்சைப் பெட்டிக்குள் வெள்ளை முத்துக்கள்? (White pearls in green box)',
            'val1': 'Okra',
            'val2': 'Chilli',
            'ans': 'Okra',
          },
          {
            'q': 'ஒற்றைக்காலில் நிற்பான்? (Stands on one leg)',
            'val1': 'Tree',
            'val2': 'Stork',
            'ans': 'Tree',
          },
          {
            'q': 'உண்ணுவான் ஆனால் விழுங்கமாட்டான்? (Eats but doesn\'t swallow)',
            'val1': 'Fire',
            'val2': 'Water',
            'ans': 'Fire',
          },
          {
            'q':
                'தலையைச் சீவினால் தாளிலே நடப்பான்? (Sharpen head, walks on paper)',
            'val1': 'Pencil',
            'val2': 'Pen',
            'ans': 'Pencil',
          },
        ],
      },
    },
  ],
};

final List<Map<String, dynamic>> std3Content = [];
