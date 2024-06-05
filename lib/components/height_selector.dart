import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../controls/bmicontroller.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {

  BmiController BMIController=Get.put(BmiController());


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1,color: Colors.red),
          borderRadius: BorderRadius.circular(20),color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              blurRadius: 5,
              //offset: Offset(4, 8), // Shadow position
            ),],),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Height (CM)',style:TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 18,
                  color: Colors.red
              ),),
              Expanded(child:
                Obx(() => SfSlider.vertical(
                  activeColor: Colors.red,
                  min: 50,
                  max: 250,
                  value: BMIController.height.value,
                  interval: 25,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 1,
                  onChanged: (dynamic value) {
                    BMIController.height.value=value;
                  },
                ),))

            ],
          ),
        ),
      ),
    );
  }
}
