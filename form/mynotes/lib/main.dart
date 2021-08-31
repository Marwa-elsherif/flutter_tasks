import 'package:flutter/material.dart';
import 'package:mynotes/age.dart';
import 'package:mynotes/form_fields.dart';

void main() {
  runApp(MyApp());
}

var b = Colors.black;
var r = Colors.lightGreen;
var w = Colors.white;
int year = 0;
var myController = TextEditingController();
String str = "User Name";
var themeColor = Colors.white;
var a = Colors.yellow[200];
bool passwordVisable = true;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          // brightness: Brightness.dark,
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.lightGreen,
              shadowColor: Colors.lightGreen,
              padding: EdgeInsets.all(20),
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              side: BorderSide(
                  color: Colors.lightGreen,
                  width: 0.5,
                  style: BorderStyle.solid),
              textStyle: TextStyle(
                color: Colors.black,
                // fontSize: 10,
                //fontStyle: FontStyle.italic
              ),
            ),
          )),
      home: MyHomePage(title: 'First Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FormFields(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            themeColor =
                themeColor == Colors.black87 ? Colors.white : Colors.black87;
            b = b == Colors.black ? Colors.white : Colors.black;
            w = w == Colors.white ? Colors.black : Colors.white;
          });
        },
        tooltip: 'change theme',
        child: Icon(Icons.add),
      ),
    );
  }
}
