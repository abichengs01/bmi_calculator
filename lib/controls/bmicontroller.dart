import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiController extends GetxController{
  RxInt weight=55.obs;
  RxInt age=15.obs;
  RxDouble height=125.0.obs;
  RxDouble tempbmi=0.0.obs;
  RxString BMI = "".obs;
  RxString BMIstatus = "".obs;
  Rx<Color> colorStattus = Colors.purpleAccent.obs;

  void bmiCalculation(){
    var Hmeter= height/100;
    tempbmi.value= (weight / (Hmeter*Hmeter)) ;
    BMI.value=tempbmi.toStringAsFixed(1);
    tempbmi.value=double.parse(BMI.value);
    print(BMI);
    findStatus();
  }

  void findStatus()
  {
    if(tempbmi.value <18.5)
    {
      BMIstatus.value = "UNDERWEIGHT";
      colorStattus=Colors.yellow.obs;
    }
    if(tempbmi.value >18.5 && tempbmi
        .value <24.9 )
    {
      BMIstatus.value = "NORMAL";
      colorStattus=Colors.green.obs;

    }
    if(tempbmi.value >25.0 && tempbmi.value <29.9 )
    {
      BMIstatus.value = "OVERWEIGHT";
      colorStattus=Colors.orangeAccent.obs;
    }
    if(tempbmi.value >30.0 && tempbmi.value <34.9 )
    {
      BMIstatus.value = "OBESE";
      colorStattus=Colors.orange.shade800.obs;

    }
    if(tempbmi.value > 35.0)
    {
      BMIstatus.value = "EXTREMELY OBESE";
      colorStattus=Color(0xffD50000).obs ;


    }
  }


}

