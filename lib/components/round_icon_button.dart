import 'package:flutter/material.dart';

//We've used RawMaterialButton, coz we FloatingActionButton is made of RawMaterialButton,originally, so if we wanna develop our on button design then we are take a raw material button, change it's properties according to our needs
class RoundIconButton extends StatelessWidget {
  @override
  RoundIconButton({this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;

  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
