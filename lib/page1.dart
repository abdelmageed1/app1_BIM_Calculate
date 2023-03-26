import 'package:flutter/material.dart';

class page extends StatefulWidget {

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  //const page({Key? key}) : super(key: key);
  int counter = 2 ;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Abdelmageed'),),
      body:
        Center(
          child: Column(

            mainAxisSize: MainAxisSize.max,
            children: [
              TextButton(
                  onPressed: (){
                    setState(() {
                      counter = 0 ;
                    });


                  },
                  child: Text('اعادة الى صفر' , style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)) ,
              Padding(
                padding: const EdgeInsets.all(80.0),
                child:  Text("$counter" ,style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: TextButton(
                    onPressed: (){
                     setState(() {
                       counter++ ;
                     });


                    },
                    child: Text('   تسبيح   ', style: TextStyle(fontSize: 50),)),
              ) ,


            ],
          ),
        ),

    );
  }
}
