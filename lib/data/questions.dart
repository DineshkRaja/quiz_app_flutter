import 'package:sample_flutter/models/quiz_questions.dart';

const questions = [
  QuizQuestions('What is Flutter?', [
    'All',
    'Flutter uses the Dart programming language, which is optimized for client-side development.',
    'Flutter uses a reactive programming model that allows for real-time updates and fast rendering of UI.',
    'Flutter provides a rich set of pre-built widgets that can be customized to create beautiful and responsive UI.'
  ]),
  QuizQuestions(
      'What are some common Flutter performance optimization techniques?', [
    'Minimizing widget rebuilds, Reducing the size of widgets, Using the right widgets, Reducing unnecessary layers, Minimizing expensive operations, Using the right data structures',
    'Minimizing widget rebuilds',
    'Use Coroutine',
    'Not All'
  ]),
  QuizQuestions(
      'What is the difference between StatelessWidget and StatefulWidget in Flutter?',
      [
        'StatelessWidget is a widget that does not have any mutable state & StatefulWidget is a widget that has a mutable state',
        'StatelessWidget is a widget has Jetpack Compose & StatefulWidget is a widget Swift UI',
        'StatefulWidget is a widget that does not have any mutable state',
        'Not All'
      ]),
  QuizQuestions('Is Flutter Open Source or not?', [
    'Yes, Flutter is an open-source mobile application development framework developed by Google.',
    'Yes, Flutter is an open-source mobile application development framework developed by Microsoft',
    'No, Flutter is an not open-source mobile application development framework developed by Google',
    'Not All'
  ]),
  QuizQuestions(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestions('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestions(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestions(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestions(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestions(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];
