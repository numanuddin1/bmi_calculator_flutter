import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {

  RoundIconButton({this.icon, this.onPress});
  final IconData icon;
  final Function onPress;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(
          width: 56,
          height: 56
      ),
      elevation: 0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
