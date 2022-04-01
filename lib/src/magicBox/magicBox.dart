import 'package:flutter/material.dart';
import 'package:parcial_movil/src/buttons/button1.dart';
import 'package:parcial_movil/src/buttons/button2.dart';
import 'package:parcial_movil/src/buttons/button3.dart';

class MagicBox extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MagicBox();
  }

}

class _MagicBox extends State<MagicBox>{ 

  final data = Data(num1: 1, num2: 2, num3: 3);

  int sum1 = 0;
  int sum2 = 0;
  int sum3 = 0;
  int sum4 = 0;
  int sum5 = 0;
  int sum6 = 0;
  int sum7 = 0;
  int sum8 = 0;

  sumRow1(){
    
    setState(() {
      sum1 = data.num1 + data.num2 + data.num3;
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
        // Row(mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Card(
        //         child: 
        //           Column(
        //             children: [
        //               Button1(v1)
        //             ],
        //             )
        //       ),            
        //       Card(
        //         child: 
        //           Column(
        //             children: [
        //               Button1()
        //             ],
        //             )
        //       ),
        //       Card(
        //         child: 
        //           Column(
        //             children: [
        //               Button1()
        //             ],
        //             )
        //       )
        //     ],
        //   ),
        // Row(mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Card(
        //         child: 
        //           Column(
        //             children: [
        //               Button1()
        //             ],
        //             )
        //       ),            
        //       Card(
        //         child: 
        //           Column(
        //             children: [
        //               Button1()
        //             ],
        //             )
        //       ),
        //       Card(
        //         child: 
        //           Column(
        //             children: [
        //               Button1()
        //             ],
        //             )
        //       )
        //     ],
        //   ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){sumRow1();}, child: Icon(Icons.summarize)),
                  Text(this.sum1.toString()),

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

  Data({required this.num1, required this.num2, required this.num3});
}
