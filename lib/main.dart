
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parcial_movil/structure.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Cuadrado magico.'),
      ),
      body: Structure(),
      ),
  ));
}


