import 'package:analog_clock/clock/analogic_circle.dart';
import 'package:analog_clock/clock/hour_pointer.dart';
import 'package:analog_clock/clock/minute_pointer.dart';
import 'package:analog_clock/clock/second_pointer.dart';
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
                  HourPointer(),
                  MinutePointer(),
                  SecondPointer(),
                  Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ]
          ),
        );
      }
    );
  }
}