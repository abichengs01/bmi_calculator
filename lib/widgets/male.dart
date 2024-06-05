import 'package:bmi_calculator/components/age_selector.dart';
import 'package:bmi_calculator/components/height_selector.dart';
import 'package:bmi_calculator/components/weight_selector.dart';
import 'package:bmi_calculator/screens/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controls/bmicontroller.dart';

class Male extends StatefulWidget {
  const Male({super.key});

  @override
  State<Male> createState() => _MaleState();
}

class _MaleState extends State<Male> {
  @override
  Widget build(BuildContext context) {

    BmiController BMIController=Get.put(BmiController());


    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        )
      ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
                      children: [
                        SizedBox(height: 20,),
            Expanded(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeightSelector(),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WeightSelector(),
                        SizedBox(height: 5,),
                        AgeSelector(),
                      ],
                    ),
                  )
                ],
              ),
            ),
                        SizedBox(height: 20,),
                        Container(width: 300,height: 60,
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),color: Colors.red,),
                            child: TextButton(onPressed: (){
                              BMIController.bmiCalculation();
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
                            },
                                child:Text('Calculate',style: TextStyle(
                                  color: Colors.white,fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),))),
                        SizedBox(height: 20,),

                      ],
                  ),
          ),
    );
  }
}
