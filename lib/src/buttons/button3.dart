import 'package:flutter/material.dart';
import 'package:parcial_movil/src/magicBox/magicBox.dart';

class Button3 extends StatefulWidget {
  final Data data;
  Button3({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button3();
  }
  
}

class _Button3 extends State<Button3>{

  netxNumber(){
    setState(() {
      if(widget.data.num3 == 9){
        widget.data.num3 = 1;
      }else{
        widget.data.num3++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: (){netxNumber();}, child: Text(this.widget.data.num3.toString(), style: TextStyle(fontSize: 25),))
      ],
    );
  }
}