import 'package:flutter/material.dart';
import 'package:parcial_movil/src/buttons/button1.dart';
import 'package:parcial_movil/src/buttons/button2.dart';
import 'package:parcial_movil/src/buttons/button3.dart';
import 'package:parcial_movil/src/buttons/button4.dart';
import 'package:parcial_movil/src/buttons/button5.dart';
import 'package:parcial_movil/src/buttons/button6.dart';
import 'package:parcial_movil/src/buttons/button7.dart';
import 'package:parcial_movil/src/buttons/button8.dart';
import 'package:parcial_movil/src/buttons/button9.dart';

class MagicBox extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MagicBox();
  }

}

class _MagicBox extends State<MagicBox>{ 

  final data = Data(num1: 1, num2: 2, num3: 3, 
                    num4: 4, num5: 5, num6: 6, 
                    num7: 7, num8: 8, num9: 9);

  int hrz1 = 0;
  int hrz2 = 0;
  int hrz3 = 0;
  int ver1 = 0;
  int ver2 = 0;
  int ver3 = 0;
  int dgn1 = 0;
  int dgn2 = 0;

  bool noEqual = false;
  String answer = "a";

  sumMatriz(){
    
    setState(() {
      hrz1 = data.num1 + data.num2 + data.num3;
      hrz2 = data.num4 + data.num5 + data.num6;
      hrz3 = data.num7 + data.num8 + data.num9;
      ver1 = data.num1 + data.num4 + data.num7;
      ver2 = data.num2 + data.num5 + data.num8;
      ver3 = data.num3 + data.num6 + data.num9;
      dgn1 = data.num1 + data.num5 + data.num9;
      dgn2 = data.num7 + data.num5 + data.num3;
    });
  }

  // comparation() {
  //   setState(() {
  //     if(data.num1 != data.num2){
  //       noEqual = true;
        
  //     }else{noEqual = false;}
  //   });
  // }

  result() {
    sumMatriz();
    setState(() {

        if(hrz1 == 15 && hrz2 == 15 && hrz3 == 15 && ver1 == 15 && ver2 == 15 && ver3 == 15 && dgn1 == 15 ){

          answer = "It's a magic box";

        }else{answer = "It's not a magic box";}
       
    });
  }

  @override
  Widget build(BuildContext context) {
    var mBox = Container(decoration: BoxDecoration(color: Colors.yellow),
    
      child: Column(
        children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: 
                  Column(
                    children: [
                      
                      Button1(data: data),
                    ],
                    )
              ),            
              Card(
                child: 
                  Column(
                    children: [
                      Button2(data: data)
                    ],
                    )
              ),
              Card(
                child: 
                  Column(
                    children: [
                      Button3(data: data)
                    ],
                    )
              )
            ],
          ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: 
                  Column(
                    children: [
                      Button4(data: data)
                    ],
                    )
              ),            
              Card(
                child: 
                  Column(
                    children: [
                      Button5(data: data)
                    ],
                    )
              ),
              Card(
                child: 
                  Column(
                    children: [
                      Button6(data: data)
                    ],
                    )
              )
            ],
          ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: 
                  Column(
                    children: [
                      Button7(data: data)
                    ],
                    )
              ),            
              Card(
                child: 
                  Column(
                    children: [
                      Button8(data: data)
                    ],
                    )
              ),
              Card(
                child: 
                  Column(
                    children: [
                      Button9(data: data)
                    ],
                    )
              )
            ],
          ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){result();}, child: Icon(Icons.summarize)),
                  Text(this.answer.toString())

                ],)
        ]
        ),
    );

    return mBox;
  }
}

class Data {
  int num1;
  int num2;
  int num3;
  int num4;
  int num5;
  int num6;
  int num7;
  int num8;
  int num9;

  Data({required this.num1, required this.num2, required this.num3,
        required this.num4, required this.num5, required this.num6,
        required this.num7, required this.num8, required this.num9,});
}
