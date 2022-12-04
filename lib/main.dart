import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF15192E),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF15192E),
        ),
      ), //primary this is how we change the theme of our app, the ThemeData.light() is the default theme
      home: InputPage(),
    );
  }
}

//In this project we'll be creating multiple pages, so to keep the code tidy , we'll be creating different dart files
// ------------------------------------------------------------------------
// textTheme: TextTheme(
// bodyText2: TextStyle(
// color: Color(0xFFFFFFFF)))
// ------------------------------------------------------------------------
// #deleted this coz, dark theme already comes with a white body color
// ------------------------------------------------------------------------
// bodyText1 → TextStyle?
//
// Used for emphasizing text that would otherwise be bodyText2.
//
// bodyText2 → TextStyle?
// ------------------------------------------------------------------------
// The default text style for Material.
// code for white color - 0xFFFFFFFF
//hexcode of color is 6 digits, but flutter requires it in RGB format, so delete ' # ' sign and add the
//prefix OxFF to the 6 digit hexaDecimal color code;
