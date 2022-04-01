import 'package:flutter/material.dart';
import 'package:parcial_movil/src/magicBox/magicBox.dart';

class Button2 extends StatefulWidget {
  final Data data;
  Button2({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button2();
  }
  
}

class _Button2 extends State<Button2>{

  netxNumber(){
    setState(() {
      if(widget.data.num2 == 9){
        widget.data.num2 = 1;
      }else{
        widget.data.num2++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var button2 = Column(
      children: [
        ElevatedButton(onPressed: (){netxNumber();}, child: Text(this.widget.data.num2.toString()))
      ],
    );
    return button2;
  }
}