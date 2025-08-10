import 'package:quiz_application/models/questions.dart';

const List<Questions> questions = [

  Questions(
    questions: "What is Flutter?", 
    options: [
      "A UI toolkit for building natively compiled applications",
      "A backend framework for web development",
      "A library for building Android apps only",
      "A text editing tool",
      "A mobile development framework"
    ]
  ),

  Questions(
    questions: "Which language is used to write Flutter apps?",
    options: [
      "Dart",
      "Java",
      "Swift",
      "Kotlin",
      "C++"
    ]
  ),
  
  Questions(
    questions: "Which widget is used to create a button in Flutter?",
    options: [
      "ElevatedButton",
      "FlatButton",
      "TextButton",
      "IconButton",
      "RaisedButton"
    ]
  ),
  
  Questions(
    questions: "What is the main purpose of the `setState()` method in Flutter?",
    options: [
      "To update the UI by marking the widget as dirty",
      "To create a new widget",
      "To handle user input",
      "To initialize variables",
      "To trigger a state change in the widget"
    ]
  ),
  
  Questions(
    questions: "Which of the following is a stateless widget in Flutter?",
    options: [
      "Text",
      "Checkbox",
      "Switch",
      "TextField",
      "Container"
    ]
  ),
  
  Questions(
    questions: "Which function is called first in Flutter when an app starts?",
    options: [
      "main()",
      "build()",
      "runApp()",
      "initState()",
      "start()"
    ]
  ),
  
  Questions(
    questions: "Which widget is used to display an image in Flutter?",
    options: [
      "Image",
      "Icon",
      "AssetImage",
      "Container",
      "Picture",
      "SvgPicture"
    ]
  ),
  
  Questions(
    questions: "Which of the following is used for routing in Flutter?",
    options: [
      "Navigator",
      "RouteBuilder",
      "ScreenManager",
      "PageController",
      "Router"
    ]
  ),
  
  Questions(
    questions: "What does the `FutureBuilder` widget do in Flutter?",
    options: [
      "Builds a widget based on the state of a `Future`",
      "Creates a new future for asynchronous tasks",
      "Renders a static widget",
      "Builds widgets instantly without waiting",
      "Fetches data from an API",
      "Waits for an asynchronous task to complete before rendering"
    ]
  ),
  
  Questions(
    questions: "Which package is used to manage state in Flutter?",
    options: [
      "Provider",
      "SQLite",
      "Http",
      "SharedPreferences",
      "BLoC"
    ]
  ),
  
  Questions(
    questions: "Which widget can be used to create a scrollable list in Flutter?",
    options: [
      "ListView",
      "Column",
      "Row",
      "Stack",
      "SingleChildScrollView",
      "GridView"
    ]
  ),
  
  Questions(
    questions: "What is the default layout widget in Flutter?",
    options: [
      "Container",
      "Scaffold",
      "Column",
      "Stack",
      "BoxDecoration"
    ]
  ),
  
  Questions(
    questions: "What is the main purpose of `const` keyword in Flutter?",
    options: [
      "To create compile-time constant widgets",
      "To define static variables",
      "To declare a function",
      "To enable hot reload",
      "To optimize memory"
    ]
  ),
  
  Questions(
    questions: "Which Flutter widget is used to display a loading indicator?",
    options: [
      "CircularProgressIndicator",
      "Text",
      "ProgressBar",
      "ActivityIndicator",
      "LinearProgressIndicator"
    ]
  ),
  
  Questions(
    questions: "Which method is used to change the state of a `StatefulWidget`?",
    options: [
      "setState()",
      "updateState()",
      "build()",
      "changeState()",
      "rebuild()"
    ]
  ),
  
  Questions(
    questions: "What does the `Navigator.push()` method do in Flutter?",
    options: [
      "Pushes a new route onto the navigation stack",
      "Pops the current route from the stack",
      "Replaces the current route",
      "Checks if a route exists in the stack",
      "Shows a dialog"
    ]
  ),
  
  Questions(
    questions: "Which widget is used for making a custom layout in Flutter?",
    options: [
      "CustomPaint",
      "Column",
      "Row",
      "Container",
      "LayoutBuilder"
    ]
  ),
  
  Questions(
    questions: "What is the purpose of `InheritedWidget` in Flutter?",
    options: [
      "To share data efficiently across the widget tree",
      "To render a widget with custom data",
      "To make a widget editable",
      "To optimize performance in animations",
      "To manage states across screens"
    ]
  ),
  
  Questions(
    questions: "Which widget in Flutter is used to create a multi-line text input field?",
    options: [
      "TextField",
      "Text",
      "Form",
      "RichText",
      "MultiTextField"
    ]
  ),
  
  Questions(
    questions: "How do you make a widget scrollable in Flutter?",
    options: [
      "Wrap it in a `SingleChildScrollView`",
      "Use a `ListView`",
      "Use `Scrollbar`",
      "Apply `Overflow` property",
      "Wrap it in a `CustomScrollView`"
    ]
  ),
];
