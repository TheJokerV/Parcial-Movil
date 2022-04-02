import 'package:flutter/material.dart';
import 'package:parcial_movil/src/magicBox/magicBox.dart';

class Button4 extends StatefulWidget {
  final Data data;
  Button4({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button4();
  }
  
}

class _Button4 extends State<Button4>{

  netxNumber(){
    setState(() {
      if(widget.data.num4 == 9){
        widget.data.num4 = 1;
      }else{
        widget.data.num4++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: (){netxNumber();}, child: Text(this.widget.data.num4.toString(), style: TextStyle(fontSize: 25),))
      ],
    );
  }
}