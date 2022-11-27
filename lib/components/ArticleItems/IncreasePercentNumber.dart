import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class IncreasePercentNumber extends StatelessWidget {
  const IncreasePercentNumber({Key? key, required this.percent})
      : super(key: key);

  final double percent;
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      animationDuration: 1444,
      animation: false,
      radius: 20.0,
      lineWidth: 3.0,
      percent: percent / 100,
      center: Text('${percent.toStringAsFixed(1)}%',
          style: const TextStyle(fontSize: 10, color: Colors.white)),
      progressColor: Colors.white,
      backgroundColor: Colors.transparent,
    );
  }
}
