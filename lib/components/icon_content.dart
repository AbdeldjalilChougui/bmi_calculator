import 'package:flutter/material.dart';
import '../constants.dart';

class GenderCard extends StatelessWidget {
  GenderCard({@required this.genderIcon,this.genderType,this.textColor});

  final IconData? genderIcon;
  final String? genderType;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon!,
          size: 80,
        ),
        SizedBox(height: 20,),
        Text(
          genderType!,
          style: TextStyle (
            fontSize: 18,
            color: this.textColor,
          ),
        ),
      ],
    );
  }
}