// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:mynotes/age.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//           primarySwatch: Colors.lightGreen,

//           // brightness: Brightness.dark,
//           textButtonTheme: TextButtonThemeData(
//             style: TextButton.styleFrom(
//               primary: Colors.black,
//               backgroundColor: Colors.lightGreen,
//               shadowColor: Colors.lightGreen,
//               padding: EdgeInsets.all(20),
//               shape: const BeveledRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10))),
//               side: BorderSide(
//                   color: Colors.lightGreen,
//                   width: 0.5,
//                   style: BorderStyle.solid),
//               textStyle: TextStyle(
//                 color: Colors.black,
//                 // fontSize: 10,
//                 //fontStyle: FontStyle.italic
//               ),
//             ),
//           )),
//       home: MyHomePage(title: 'First Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var b = Colors.black;
//   var r = Colors.lightGreen;
//   var w = Colors.white;
//   int year = 0;
//   var myController = TextEditingController();
//   int _counter = 0;
//   String str = "User Name";
//   var themeColor = Colors.white;
//   var a = Colors.yellow[200];
//   bool passwordVisable = true;
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         backgroundColor: Color.fromRGBO(222, 255, 30, .5),
//       ),
//       body: Container(
//         color: themeColor,
//         height: double.infinity,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 40,
//               ),
//               Container(
//                 margin: EdgeInsets.all(8.0),
//                 child: TextField(
//                   style: TextStyle(color: b),
//                   //controller: myController,
//                   decoration: InputDecoration(
//                     fillColor: r,
//                     border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                             width: 2.0, color: r, style: BorderStyle.solid),
//                         borderRadius: BorderRadius.circular(8.0)),
//                     labelText: str,
//                     labelStyle: TextStyle(fontSize: 12, color: b),
//                     hintText: "enter your name",
//                     hintStyle: TextStyle(fontSize: 10, color: b),
//                     icon: Icon(
//                       Icons.person,
//                       color: b,
//                     ),
//                   ),
//                   keyboardType: TextInputType.text,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(8.0),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(width: 2.0, color: r),
//                         borderRadius: BorderRadius.circular(8.0)),
//                     labelStyle: TextStyle(fontSize: 12, color: b),
//                     hintStyle: TextStyle(fontSize: 10, color: b),
//                     labelText: "E-mail",
//                     hintText: "enter your E-mail",
//                     // icon: Icon(Icons.email), we can use that or  prefix: Icon(Icons.email),
//                     icon: Icon(Icons.email, color: b),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(8.0),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     labelStyle: TextStyle(fontSize: 12, color: b),
//                     hintStyle: TextStyle(fontSize: 10, color: b),
//                     prefixText:
//                         "+20   ", //لوضع نص  معين في بداية الكلام مثل الكود الدولي
//                     suffixText:
//                         "#", //لوضع نص  معين في نهاية الكلام مثل الكود الدولي
//                     labelText: "mobile Number",
//                     hintText: "enter your mobile Number",
//                     icon: Icon(Icons.mobile_friendly, color: b),
//                   ),
//                   keyboardType: TextInputType.phone,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(8.0),
//                 child: TextField(
//                   controller: myController,
//                   decoration: InputDecoration(
//                     labelStyle: TextStyle(fontSize: 12, color: b),
//                     hintStyle: TextStyle(fontSize: 10, color: b),
//                     labelText: "Birth Year",
//                     hintText: "enter your birth Year",
//                     icon: Icon(Icons.date_range, color: b),
//                   ),
//                   keyboardType: TextInputType.number,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(8.0),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     labelStyle: TextStyle(fontSize: 12, color: b),
//                     hintStyle: TextStyle(fontSize: 10, color: b),
//                     labelText: "Password",
//                     hintText: "enter your Password",
//                     icon: Icon(Icons.lock, color: b),
//                     suffixIcon: IconButton(
//                         icon: Icon(
//                             passwordVisable
//                                 ? Icons.visibility
//                                 : Icons.visibility_off,
//                             color: b),
//                         onPressed: () {
//                           setState(() {
//                             passwordVisable = !passwordVisable;
//                           });
//                         }),
//                   ),
//                   keyboardType: TextInputType.visiblePassword,
//                   obscureText: passwordVisable,
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(8.0),
//                 child: TextField(
//                   style: TextStyle(color: b),
//                   decoration: InputDecoration(
//                     fillColor: r,
//                     border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                             width: 2.0, color: r, style: BorderStyle.solid),
//                         borderRadius: BorderRadius.circular(8.0)),
//                     labelText: "Adress",
//                     labelStyle: TextStyle(fontSize: 12, color: b),
//                     hintText: "enter your Adress",
//                     hintStyle: TextStyle(fontSize: 10, color: b),
//                     icon: Icon(
//                       Icons.home,
//                       color: b,
//                     ),
//                   ),
//                   maxLines: 4,
//                   textAlign: TextAlign.center,
//                   keyboardType: TextInputType.text,
//                 ),
//               ),
//               Container(
//                 child: TextButton(
//                   onPressed: () {
//                     setState(() {
//                       //str = myController.text;

//                       AgeCalculator(int.parse(myController.text));
//                       year = AgeCalculator.age;
//                     });
//                   },
//                   onLongPress: () {
//                     print("long press");
//                   },
//                   child: Text("Get Value"),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 child: Text(
//                   "your age is $year years old ",
//                   style: TextStyle(color: b, fontSize: 25),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       // body: Center(
//       //   child: Column(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: <Widget>[
//       //       FloatingActionButton(
//       //         onPressed: () {
//       //           print("hiiii");
//       //         },
//       //         child: Icon(Icons.add_alert),
//       //       ),
//       //       FloatingActionButton.extended(
//       //         onPressed: () {
//       //           print("hiiii");
//       //         },
//       //         label: Text("alrt"),
//       //         icon: Icon(Icons.add_alert),
//       //       ),
//       //       SizedBox(height: 20),
//       //       ElevatedButton(
//       //         onPressed: () {
//       //           setState(() {
//       //             str = "hi marwa";
//       //             a = Colors.yellow[200];
//       //           });
//       //         },
//       //         onLongPress: () {
//       //           setState(() {
//       //             str = "  ";
//       //             a = Colors.green;
//       //           });
//       //         },
//       //         child: Text(
//       //           'click me',
//       //           style: TextStyle(
//       //               color: a, letterSpacing: 2, fontStyle: FontStyle.italic),
//       //         ),
//       //       ),
//       //       SizedBox(height: 30),
//       //       TextButton(
//       //         onPressed: () {
//       //           print("pressed");
//       //         },
//       //         onLongPress: () {
//       //           print("long press");
//       //         },
//       //         child: Text("press me"),
//       //       ),
//       //       SizedBox(height: 30),
//       //       Text(
//       //         str,
//       //         style: TextStyle(
//       //             color: Colors.green,
//       //             fontStyle: FontStyle.italic,
//       //             fontSize: 20,
//       //             letterSpacing: 2),
//       //       ),
//       //       Text(
//       //         'You have pushed the button this many times:',
//       //         style: TextStyle(
//       //             color: Colors.yellow[200],
//       //             letterSpacing: 2,
//       //             fontStyle: FontStyle.italic),
//       //       ),
//       //       Text(
//       //         '$_counter',
//       //         style: Theme.of(context).textTheme.headline4,
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             themeColor =
//                 themeColor == Colors.black87 ? Colors.white : Colors.black87;
//             b = b == Colors.black ? Colors.white : Colors.black;
//             w = w == Colors.white ? Colors.black : Colors.white;

//             // var w = Colors.white;
//           });
//         },
//         tooltip: 'change theme',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// //////// TextButton with inline style ////////

// //  TextButton(
// //                 onPressed: () {
// //                   print("pressed2");
// //                 },
// //                 onLongPress: () {
// //                   print("long press2");
// //                 },
// //                 child: Text("press me"),
// //                 style: TextButton.styleFrom(
// //         primary: Colors.white,
// //         backgroundColor: Colors.teal,
// //         onSurface: Colors.grey,
// //       ),

// // import 'package:flutter/material.dart';
// // import 'dart:math';
// // import 'dart:io';

// // void main() {
// //   runApp(MyApp());
// //   //print("hello here");
// //   var degree = new Random().nextInt(100);
// //   print("degree = $degree");
// //   if (degree > 90) {
// //     print("Exellent A");
// //   } else if (degree > 80) {
// //     print("veryGood B");
// //   } else if (degree > 70) {
// //     print("Good C");
// //   } else if (degree > 50) {
// //     print("D");
// //   } else if (degree < 50) {
// //     print("Fail F");
// //   }
// //   print("enter your age please : ");
// //   var agee = "1996";
// //   //stdin.readLineSync();
// //   var age = DateTime.now().year - int.parse(agee);
// //   //

// //   print("your age is $age years old");
// // }
