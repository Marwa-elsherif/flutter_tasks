import 'package:flutter/material.dart';
import 'main.dart';

class FormFields extends StatefulWidget {
  @override
  _FormFieldsState createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  @override
  Widget _buildFormFields(
      String hintTxt, String labelTxt, IconData icon, _keyboardType) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(4),
        child: TextField(
          style: TextStyle(color: b),
          // controller: myController,
          decoration: InputDecoration(
            fillColor: r,
            // border: OutlineInputBorder(
            //     borderSide:
            //         BorderSide(width: 2.0, color: r, style: BorderStyle.solid),
            //     borderRadius: BorderRadius.circular(8.0)),
            labelText: labelTxt,
            labelStyle: TextStyle(fontSize: 12, color: b),
            hintText: hintTxt,
            hintStyle: TextStyle(fontSize: 10, color: b),
            icon: Icon(
              icon,
              color: b,
            ),
          ),
          keyboardType: _keyboardType,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      color: themeColor,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            _buildFormFields(
                "enter your name", str, Icons.person, TextInputType.text),
            _buildFormFields("enter your E-mail", "E-mail", Icons.email,
                TextInputType.emailAddress),
            _buildFormFields(
              "enter your mobile Number",
              "mobile Number",
              Icons.mobile_friendly,
              TextInputType.phone,
            ),
            _buildFormFields(
              "enter your birth Year",
              "Birth Year",
              Icons.date_range,
              TextInputType.number,
            ),

            // Container(
            //   margin: EdgeInsets.all(8.0),
            //   child: TextField(
            //     style: TextStyle(color: b),
            //     //controller: myController,
            //     decoration: InputDecoration(
            //       fillColor: r,
            //       border: OutlineInputBorder(
            //           borderSide: BorderSide(
            //               width: 2.0, color: r, style: BorderStyle.solid),
            //           borderRadius: BorderRadius.circular(8.0)),
            //       labelText: str,
            //       labelStyle: TextStyle(fontSize: 12, color: b),
            //       hintText: "enter your name",
            //       hintStyle: TextStyle(fontSize: 10, color: b),
            //       icon: Icon(
            //         Icons.person,
            //         color: b,
            //       ),
            //     ),
            //     keyboardType: TextInputType.text,
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.all(8.0),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(width: 2.0, color: r),
            //           borderRadius: BorderRadius.circular(8.0)),
            //       labelStyle: TextStyle(fontSize: 12, color: b),
            //       hintStyle: TextStyle(fontSize: 10, color: b),
            //       labelText: "E-mail",
            //       hintText: "enter your E-mail",
            //       // icon: Icon(Icons.email), we can use that or  prefix: Icon(Icons.email),
            //       icon: Icon(Icons.email, color: b),
            //     ),
            //     keyboardType: TextInputType.emailAddress,
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.all(8.0),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       labelStyle: TextStyle(fontSize: 12, color: b),
            //       hintStyle: TextStyle(fontSize: 10, color: b),
            //       prefixText:
            //           "+20   ", //لوضع نص  معين في بداية الكلام مثل الكود الدولي
            //       suffixText:
            //           "#", //لوضع نص  معين في نهاية الكلام مثل الكود الدولي
            //       labelText: "mobile Number",
            //       hintText: "enter your mobile Number",
            //       icon: Icon(Icons.mobile_friendly, color: b),
            //     ),
            //     keyboardType: TextInputType.phone,
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.all(8.0),
            //   child: TextField(
            //     controller: myController,
            //     decoration: InputDecoration(
            //       labelStyle: TextStyle(fontSize: 12, color: b),
            //       hintStyle: TextStyle(fontSize: 10, color: b),
            //       labelText: "Birth Year",
            //       hintText: "enter your birth Year",
            //       icon: Icon(Icons.date_range, color: b),
            //     ),
            //     keyboardType: TextInputType.number,
            //   ),
            // ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(fontSize: 12, color: b),
                  hintStyle: TextStyle(fontSize: 10, color: b),
                  labelText: "Password",
                  hintText: "enter your Password",
                  icon: Icon(Icons.lock, color: b),
                  suffixIcon: IconButton(
                      icon: Icon(
                          passwordVisable
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: b),
                      onPressed: () {
                        setState(() {
                          passwordVisable = !passwordVisable;
                        });
                      }),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: passwordVisable,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: b),
                decoration: InputDecoration(
                  fillColor: r,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2.0, color: r, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(8.0)),
                  labelText: "Adress",
                  labelStyle: TextStyle(fontSize: 12, color: b),
                  hintText: "enter your Adress",
                  hintStyle: TextStyle(fontSize: 10, color: b),
                  icon: Icon(
                    Icons.home,
                    color: b,
                  ),
                ),
                maxLines: 4,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
              ),
            ),
            // Container(
            //   child: TextButton(
            //     onPressed: () {
            //       setState(() {
            //         //str = myController.text;

            //         AgeCalculator(int.parse(myController.text));
            //         year = AgeCalculator.age;
            //       });
            //     },
            //     onLongPress: () {
            //       print("long press");
            //     },
            //     child: Text("Get Value"),
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            // Container(
            //   child: Text(
            //     "your age is $year years old ",
            //     style: TextStyle(color: b, fontSize: 25),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
