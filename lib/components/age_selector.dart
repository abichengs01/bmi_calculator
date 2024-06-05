import 'package:bmi_calculator/components/secbtn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controls/bmicontroller.dart';

class AgeSelector extends StatefulWidget {
  const AgeSelector({super.key});

  @override
  State<AgeSelector> createState() => _AgeSelectorState();
}

class _AgeSelectorState extends State<AgeSelector> {

  BmiController BMIController=Get.put(BmiController());


  @override
  Widget build(BuildContext context) {
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
          ),],),
      height: 210,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Age',style:TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 19,
                    color: Colors.red
                ),),
              ],
            ),
            SizedBox(height: 3,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Container(height: 100,
                  child: Center(
                    child: Text('${BMIController.age.value}',style:TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 60,
                        color: Colors.red,fontStyle: FontStyle.italic
                    ),),
                  ),
                ),)
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SecBtn(onpress: (){
                  BMIController.age.value--;
                }, icon:Icons.minimize),
                SecBtn(onpress: (){
                  BMIController.age.value++;
                }, icon:Icons.add)

              ],
            ),

          ],
        ),
      ),

    );
  }
}
