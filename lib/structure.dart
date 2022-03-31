import 'package:flutter/material.dart';
import 'package:parcial_movil/src/magicBox/magicBox.dart';

class Structure extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return _Structure();
  }

}

class _Structure extends State<Structure> {
@override
  Widget build(BuildContext context) {
    return Column(
      children: [MagicBox()],
    );
  }

}