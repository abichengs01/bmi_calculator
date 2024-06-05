import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../controls/bmicontroller.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {

    BmiController BMIController=Get.put(BmiController());
    var percentagevalue=BMIController.tempbmi.value/75;


    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(centerTitle: true,backgroundColor: Colors.red,
        title: Text("BMI Results",style: TextStyle(
            shadows: [
              Shadow(
                color: Colors.white,
                offset: Offset(1,1),
                blurRadius:4,
              ),
            ],
          //letterSpacing: 1.5,
            fontSize: 30,fontWeight: FontWeight.bold,
            color: Colors.white
        ),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
        },
        )
      ),
      body:Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(50),
    topRight: Radius.circular(50),
    )
    ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 30,),

            Row(//mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your Body Mass Index...",style: TextStyle(
                  color: Colors.red,fontWeight: FontWeight.bold,fontSize: 24
                ),),
              ],),
            SizedBox(height: 20,),
            Obx(() => CircularPercentIndicator(
              animationDuration: 1000,
              animation: true,
              footer: Text("${BMIController.BMIstatus.value}",style: TextStyle(
                  color: BMIController.colorStattus.value,fontSize: 26,fontWeight: FontWeight.bold
                  ,fontStyle: FontStyle.italic),),
              radius: 130,
              lineWidth: 25,
              percent: percentagevalue,
              center: new Text("${BMIController.BMI.value}",style: TextStyle(
                  color: Colors.redAccent,fontSize: 60,fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
              ),),
              progressColor: BMIController.colorStattus.value,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: BMIController.colorStattus.value.withOpacity(0.2),
            ),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
              child: Container(decoration: BoxDecoration(
                border: Border.all(width: 1.5,color: BMIController.colorStattus.value),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: BMIController.colorStattus.value,
                    blurRadius: 20,
                    //offset: Offset(4, 8), // Shadow position
                  ),],
              ),
                child: Padding(
                  padding: const EdgeInsets.only(left:20,right: 20,top: 13,bottom: 10),
                  child: Center(
                     child:Column(
                       children: [
                         Text('Description',style: TextStyle(
                           color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20
                         ),),
                         SizedBox(height: 7,),
                         Container(
                           child: Obx(()=> RichText(
                             text: TextSpan(
                               children: [
                                 TextSpan(text:
                                   "Your BMI is ",style: TextStyle(
                                     color: Colors.red,fontSize: 16
                                 ),),
                                 TextSpan(text:
                                   "${BMIController.BMI.value}",style: TextStyle(
                                     color: BMIController.colorStattus.value,fontWeight: FontWeight.bold,
                                   fontSize: 18,fontStyle: FontStyle.italic
                                 ),),
                                 TextSpan(text:
                                   " , indicating your weight is in the ",style: TextStyle(
                                     color: Colors.red,fontSize: 16
                                 ),),
                                 TextSpan(text:
                                   "${BMIController.BMIstatus.value}",style: TextStyle(
                                     color: BMIController.colorStattus.value,fontWeight: FontWeight.bold,
                                     fontSize: 18,fontStyle: FontStyle.italic
                                 ),),
                                 TextSpan(text:" category for adults of your height."
                                     " Maintaining a healthy weight may reduce the risk of chronic diseases"
                                     " associated with overweight and obesity.",style: TextStyle(
                                     color: Colors.red,fontSize: 16
                                 ),),
                               ],
                             ),
                           ),
                           ),
                         ),
                       ],
                     ),
                  ),
                ),
                height: 210,

              ),
            ),
            SizedBox(height: 30,)

          ],
        ),
      ),
      ),
    );
  }
}

