import 'package:flutter/material.dart';

import '../widgets/male.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {

  // var weight=TextEditingController() ;
  // var height=TextEditingController() ;
  // double bmi=0.0;
  //
  // void bmiCalculation(){
  //
  //   double Weight=double.parse(weight.text);
  //   double Height=double.parse(height.text);
  //   bmi=(Weight / (Height * Height) )* 10000;
  //   setState(() {
  //     bmi;
  //   });
  //
  // }
  @override
  Widget build(BuildContext context) {


    return DefaultTabController(length: 2,
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(centerTitle: true,backgroundColor: Colors.red,
          title: Text("BMI Calculator",style: TextStyle(
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
        ),
        body: Column(
          children: [
            Container(height: 90,
            color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TabBar(dividerColor: Colors.red,
                  indicator:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                  indicatorSize: TabBarIndicatorSize.tab,unselectedLabelColor: Colors.white,
                  labelColor: Colors.red,
                  tabs: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.male),
                        Text("Male",style: TextStyle(
                            fontSize: 25,fontWeight: FontWeight.bold,
                            //color: Colors.red
                        ),),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.female),
                        Text("Female",style: TextStyle(
                            fontSize: 25,fontWeight: FontWeight.bold,
                            //color: Colors.red
                        ),),
                      ],
                    ),
                ],),
              ),),
            Expanded(child:TabBarView(
              children: [
                Center(child: Male()),
                Center(child: Male()),
              ],
            ))
          ],
        ),
        // appBar: AppBar(
        //   title: Text(" BMI Calculator"),centerTitle: true,
        // ),
        // body: SingleChildScrollView(
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Column(
        //       children: [
        //         TextField(controller: weight,
        //           keyboardType: TextInputType.number,
        //           decoration: InputDecoration(
        //               labelText: 'Weight',suffixText: 'in Kgs'
        //           ),
        //         ),
        //         SizedBox(height: 30,),
        //         TextField(controller: height,
        //           keyboardType: TextInputType.number,
        //           decoration: InputDecoration(
        //               labelText: 'Height',suffixText: 'in Cm'
        //           ),
        //         ),
        //         SizedBox(height: 50,),
        //         ElevatedButton(onPressed: (){
        //           bmiCalculation();
        //         }, child:Text('Calculate')),
        //         SizedBox(height: 50,),
        //         Text('Your BMI: ${bmi.toStringAsFixed(2)}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        //         SizedBox(height: 30,),
        //         Card(
        //           child: Padding(
        //             padding: const EdgeInsets.all(10.0),
        //             child: Column(
        //               children: [
        //                 Text('BMI < 18.5 : Underweight',style: TextStyle(color: Colors.amberAccent,fontSize: 18),),
        //                 Text('BMI 18.5 to 24.9 : Healthyweight',style: TextStyle(color: Colors.green,fontSize: 18),),
        //                 Text('BMI > 29.9 : Overweight ',style: TextStyle(color: Colors.orange,fontSize: 18),),
        //                 Text('BMI 30.0 and Above : Obesity ',style: TextStyle(color: Colors.red,fontSize: 18),),
        //               ],
        //             ),
        //           ),
        //         )
        //
        //
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
