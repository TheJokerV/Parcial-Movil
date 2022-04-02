import 'package:flutter/material.dart';
import 'package:parcial_movil/src/magicBox/magicBox.dart';

class Button8 extends StatefulWidget {
  final Data data;
  Button8({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button8();
  }
  
}

class _Button8 extends State<Button8>{

  netxNumber(){
    setState(() {
      if(widget.data.num8 == 9){
        widget.data.num8 = 1;
      }else{
        widget.data.num8++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: (){netxNumber();}, child: Text(this.widget.data.num8.toString(), style: TextStyle(fontSize: 25),))
      ],
    );
  }
}