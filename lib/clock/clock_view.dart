import 'package:analog_clock/clock/analogic_circle.dart';
import 'package:flutter/material.dart';

class ClockView extends StatelessWidget {
  const ClockView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(
        Duration(seconds: 1),
      ),
      builder: (context, snapshot){
        return SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  AnalogicCircle(),
                ],
              ),
            ]
          ),
        );
      }
    );
  }
}