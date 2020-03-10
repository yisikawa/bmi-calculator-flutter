import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onClick});
  final IconData icon;
  final Function onClick;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onClick,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: Color(0xFF4c4f5e),
    );
  }
}
