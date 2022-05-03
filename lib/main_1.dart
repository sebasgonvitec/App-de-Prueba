// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'App de Prueba',
//       theme: ThemeData(
//         primarySwatch: Colors.lightBlue,
//       ),
//       home: const MyHomePage(title: 'App de Prueba'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   //Variables
//   int _counter = 0;
//   bool _startOver = false;
//   bool _textBold = false;

//   //Function to increment the counter variable by one and set starOver variable to true,
//   //enabling the START OVER button
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//       _startOver = true;
//     });
//   }

//   //Function to reset the counter variable and disable the START OVER button
//   void _resetCounter() {
//     setState(() {
//       _counter = 0;
//       _startOver = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             //First button (green) to increment the counter
//             ElevatedButton(
//                 //Adding green color to the button and white color to the text
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.green,
//                   onPrimary: Colors.white,
//                 ),
//                 //Action to happen when button is pressed
//                 onPressed: _incrementCounter,
//                 //Text of the button
//                 child: const Text(
//                   'BUTTON',
//                 )),
//             //Text in between buttons
//             Text(
//               'You have pressed this button $_counter times',
//             ),
//             //Second button (red) to reset the counter
//             ElevatedButton(
//                 //Setting red color and white text
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.red,
//                   onPrimary: Colors.white,
//                 ),
//                 //Action to happen when pressed
//                 //Ternary Operation to enable or disable button
//                 onPressed: _startOver
//                     ? () {
//                         _resetCounter();
//                       }
//                     : null,
//                 child: const Text('START OVER')),
//             //Row widget to align switch and text horizontally
//             Row(
//               //Center elements in the Row widget
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 //Switch to make text bold
//                 Switch(
//                   value: _textBold,
//                   onChanged: (value) {
//                     setState(() {
//                       _textBold = value;
//                     });
//                   },
//                 ),
//                 //Ternary operation to change text (on/off) by the value of the switchs
//                 _textBold ? const Text('On') : const Text('Off'),
//               ],
//             ),
//             //Text to change to bold
//             Text(
//               'Change text to bold',
//               //Ternary operation inside of style for switching between bold or normal
//               //according to the _textBold variable
//               style: _textBold == true
//                   ? const TextStyle(fontWeight: FontWeight.bold)
//                   : const TextStyle(fontWeight: FontWeight.normal),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
