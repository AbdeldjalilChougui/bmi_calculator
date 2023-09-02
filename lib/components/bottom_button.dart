import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.textButton,@required this.onPress});

  final String? textButton;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress!,
      child: Container(
        color : kBottomContainerColor,
        margin: EdgeInsets.only(top: 10,),
        padding: EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            textButton!,
            style: kBottomButton,
          ),
        ),
      ),
    );
  }
}