import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // const ReusableCard({
  //   Key key,
  // }) : super(key: key);
  //------------------------------------
  // These key are used generally when we need animations or our widget or something is moving or scrolling around
  //------------------------------------

  ReusableCard({@required this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget cardChild;

  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        // color: Color(0xFF1D1E33),
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        height: 200,
        width: 170,
        decoration: BoxDecoration(
          color:
              colour, // Note if we have Box decoration, then color property of the container
          // Color has to be declared under BoxDecoration only, not out side that.
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

//Note const and final are almost same , only difference is, const won't work on the things which are shown or have function or shown at run time, it's only there for compile time, while for run time we have final. That's why, in ReusableCard, we have used final, coz it's showing the result AFTER compile time and during the run time .
