import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color,this.cardChild,this.onPress});

  final Color? color;
  final Widget? cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container (
        child: cardChild,
        width: 150,
        height: 160,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: this.color,
        ),
      ),
    );
  }
}