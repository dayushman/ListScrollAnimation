import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedItemSep extends StatelessWidget {
  final int itemCount;
  final double height;

  AnimatedItemSep({required this.itemCount, required this.height});

  @override
  Widget build(BuildContext context) {
    return (itemCount %2 !=0)?
        Container(
          height: 100,
          width: double.infinity,
          margin: EdgeInsets.all(8),
          color: Colors.blue,
        ):
        AnimatedContainer(
          duration: Duration(milliseconds: 10),
          height: height,
        );
  }
}
