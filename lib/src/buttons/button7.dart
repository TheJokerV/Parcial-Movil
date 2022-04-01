import 'package:flutter/material.dart';
import 'package:parcial_movil/src/magicBox/magicBox.dart';

class Button7 extends StatefulWidget {
  final Data data;
  Button7({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button7();
  }
  
}

class _Button7 extends State<Button7>{

  netxNumber(){
    setState(() {
      if(widget.data.num7 == 9){
        widget.data.num7 = 1;
      }else{
        widget.data.num7++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var button7 = Column(
      children: [
        ElevatedButton(onPressed: (){netxNumber();}, child: Text(this.widget.data.num7.toString(), style: TextStyle(fontSize: 25),))
      ],
    );
    return button7;
  }
}