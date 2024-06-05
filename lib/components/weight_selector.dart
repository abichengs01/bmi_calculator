import 'dart:ffi';

import 'package:bmi_calculator/components/secbtn.dart';
import 'package:bmi_calculator/controls/bmicontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightSelector extends StatefulWidget {
  const WeightSelector({super.key});

  @override
  State<WeightSelector> createState() => _WeightSelectorState();
}

class _WeightSelectorState extends State<WeightSelector> {
  @override
  Widget build(BuildContext context) {

    BmiController BMIController=Get.put(BmiController());

    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Colors.red),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.red,
            blurRadius: 5,
            //offset: Offset(4, 8), // Shadow position
          ),],
      ),
      height: 210,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Weight (KG)',style:TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 18,
                      color: Colors.red
                      ),),
                  ],
                ),
            SizedBox(height: 5,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Obx(() =>  Container(height: 100,
                 child: Center(
                   child: Text("${BMIController.weight.value}",style:TextStyle(
                       fontWeight: FontWeight.bold,fontSize: 60,fontStyle: FontStyle.italic,
                       color: Colors.red
                   ),),
                 ),
               ),)
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SecBtn(onpress: (){
                  BMIController.weight.value--;
                }, icon:Icons.minimize),
                SecBtn(onpress: (){
                  BMIController.weight.value++;
                }, icon:Icons.add)
              ],
            ),

          ],
        ),
      ),

    );
  }
}
