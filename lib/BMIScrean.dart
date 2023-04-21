import 'dart:math';

import 'package:app1/BMIResultScreen.dart';
import 'package:flutter/material.dart';

class BMIScrean extends StatefulWidget {
  const BMIScrean({Key? key}) : super(key: key);

  @override
  State<BMIScrean> createState() => _BMIScreanState();
}

class _BMIScreanState extends State<BMIScrean> {

  bool isMale = true;
  double height = 120;
  int age =60 ;
  double weight = 180;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI'),),
      body: Column(
        children: [
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false ;
                        });
                      }
                      ,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            color: !isMale ? Colors.blue: Colors.grey[300]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Image(image: AssetImage('assets/images/female_img.png') ,width: 90,height: 90,),
                            SizedBox(height: 10,),
                            Text('Female' ,style: TextStyle(fontSize: 20),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true ;
                        });
                      },
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: isMale  ? Colors.blue   : Colors.grey[300]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Image(image: AssetImage('assets/images/male_img.png') ,width: 90,height: 90,),
                            SizedBox(height: 10,),
                            Text('Male' ,style: TextStyle(fontSize: 20),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],

              ),
            ),
          ),
          Expanded(
            child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
              child: Container(
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Height' ,style: TextStyle(fontSize: 25),),
                  Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:CrossAxisAlignment.baseline ,
                        textBaseline: TextBaseline.alphabetic,
                        children:
                       [
                        Text('${height.toInt()}' ,style: TextStyle(fontSize: 35 ,fontWeight: FontWeight.bold),),
                        SizedBox(width: 5),
                        Text('CM' ,style: TextStyle(fontSize: 15),),

                      ],),),
                    Slider(
                      value: height,
                      max: 220,
                      min: 80,
                      onChanged: (double value) {
                        setState(() {
                          height = value;
                        });
                      },

                    )    ,
                ],    ),
                decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300]
                  ),
              )
                ),
          ),
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(

                children: [

                   Expanded(
                       child: Container(
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300]) ,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                    Text('Weigth' ,style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold), ),
                                    Text('$age', style: TextStyle(fontSize: 35 ,fontWeight: FontWeight.bold), ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                    FloatingActionButton(onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    mini: true,

                                      child: Icon(Icons.remove) ,
                                    ),
                                    FloatingActionButton(onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    mini: true,
                                      child: Icon(Icons.add) ,
                                    ),


                                    ],)

                                  ],
                                ),
                       ),
                     ),
                  SizedBox(width: 10,),
                   Expanded(

                       child: Container(
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300]) ,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                    Text('Weigth' ,style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold), ),
                                    Text('${weight.round()}', style: TextStyle(fontSize: 35 ,fontWeight: FontWeight.bold), ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                    FloatingActionButton(onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    mini: true,

                                      child: Icon(Icons.remove) ,
                                    ),
                                    FloatingActionButton(onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    mini: true,
                                      child: Icon(Icons.add) ,
                                    ),


                                    ],)

                                  ],
                                ),
                       ),
                     ),



                      ],
                    ),
            ),


               



          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child:
            MaterialButton(
              onPressed: (){
                double r = weight / pow(height/ 100, 2);
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    BMIResultScreen(age: age,isMale: isMale,result: r,)));

              },
              height: 50,
              child: Text('Calculate' , style: TextStyle(fontSize: 25 ,color: Colors.white),),
            ),
          )




          
        ],
      ),
    );
  }
}
