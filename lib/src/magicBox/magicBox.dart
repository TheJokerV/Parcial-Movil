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

  final data = Data(num1: 1, num2: 1, num3: 1, 
                    num4: 1, num5: 1, num6: 1, 
                    num7: 1, num8: 1, num9: 1);

  int hrz1 = 0;
  int hrz2 = 0;
  int hrz3 = 0;
  int ver1 = 0;
  int ver2 = 0;
  int ver3 = 0;
  int dgn1 = 0;
  int dgn2 = 0;

  String answer = "";

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

  result(){
    sumMatriz();
    setState(() {
            if(data.num1 != data.num2 && data.num1 != data.num3 && data.num1 != data.num4 && data.num1 != data.num5 &&
          data.num1 != data.num6 && data.num1 != data.num7 && data.num1 != data.num8 && data.num1 != data.num9){

             if(hrz1 == 15 && hrz2 == 15 && hrz3 == 15 && ver1 == 15 && ver2 == 15 && ver3 == 15 && dgn1 == 15 ){

                 answer = "It's a magic box";
          }else{answer = "It's not a magic box";}

        }else{answer = "It's not a magic box";}
    });
  }

// AQUI EMPIEZA EL PROGRAMA.
  @override
  Widget build(BuildContext context) {
    return Center (child: 

    Container(height: 600, width: 600, decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 6),borderRadius: BorderRadius.circular(40)), 
      child: Column(
        children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Button1(data: data),
              ),            
              Card(
                child: Button2(data: data)
              ),
              Card(
                child: Button3(data: data,),
              )
            ],
          ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Button4(data: data)
              ),            
              Card(
                child: Button5(data: data)
              ),
              Card(
                child: Button6(data: data)
              )
            ],
          ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Button7(data: data)
              ),            
              Card(
                child: Button8(data: data)
              ),
              Card(
                child: Button9(data: data)
              )
            ],
          ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                        Text("Validate magic box", style: TextStyle(fontSize: 25)),

                      Padding(padding: EdgeInsets.all(10)),
                        ElevatedButton(onPressed: (){result();}, child: Icon(Icons.add_task)),

                      Padding(padding: EdgeInsets.all(10)),
                        Container(decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey), ),
                        child: Text(this.answer, style: TextStyle( fontSize: 28),),),
                        
                      Padding(padding: EdgeInsets.all(15)),
                        Column(children: [
                          Text("Horizontal1: "+this.hrz1.toString()),
                          Text("Horizontal2: "+this.hrz2.toString()),
                          Text("Horizontal3: "+this.hrz3.toString()),
                          Text("Vertical1: "+this.ver1.toString()),
                          Text("Vertical2: "+this.ver2.toString()),
                          Text("Vertical3: "+this.ver3.toString()),
                          Text("Diagonal1: "+this.dgn1.toString()),
                          Text("Diagonal2: "+this.dgn2.toString()),
                        ],)
                      
                      ],
                  )
                ],
                )
        ]
        ),
    ));

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
