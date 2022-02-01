import 'package:flutter/material.dart';

class AnalogicCircle extends StatelessWidget {
  const AnalogicCircle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.5,
      width: width * 0.7,
      decoration: BoxDecoration(
        color:Colors.grey[200],
        shape: BoxShape.circle,
      ),
    );
  }
}