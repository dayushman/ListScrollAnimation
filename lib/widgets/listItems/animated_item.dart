import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedItem extends StatelessWidget {
  final int itemCount;
  final double height;
  final double duration;

  AnimatedItem({required this.itemCount, required this.height,required this.duration});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          margin: EdgeInsets.all(8),
          color: Colors.blue,
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: height,
        )
      ],
    );
  }
}
