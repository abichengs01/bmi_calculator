import 'package:bmi_calculator/components/age_selector.dart';
import 'package:bmi_calculator/components/height_selector.dart';
import 'package:bmi_calculator/components/weight_selector.dart';
import 'package:bmi_calculator/screens/resultpage.dart';
import 'package:bmi_calculator/widgets/male.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controls/bmicontroller.dart';

class Female extends StatefulWidget {
  const Female({super.key});

  @override
  State<Female> createState() => _FemaleState();
}

class _FemaleState extends State<Female> {
  @override
  Widget build(BuildContext context) {


    return const Male();
  }
}
