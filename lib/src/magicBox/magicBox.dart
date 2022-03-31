import 'package:flutter/material.dart';

class MagicBox extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MagicBox();
  }

}

class _MagicBox extends State<MagicBox>{

int v1 = 1;
int v2 = 1;
int v3 = 1;
int v4 = 1;
int v5 = 1;
int v6 = 1;
int v7 = 1;
int v8 = 1;
int v9 = 1;

nextNumber(int x, int identificador) {

  setState(() {
    if(x>8){

      x=1;


    }else{x++;}
  
    if(identificador==v1) {v1 = x;}
    if(identificador==v2) {v2 = x;}
    if(identificador==v3) {v3 = x;}
    if(identificador==v4) {v4 = x;}
    if(identificador==v5) {v5 = x;}
    if(identificador==v6) {v6 = x;}
    if(identificador==v7) {v7 = x;}
    if(identificador==v8) {v8 = x;}
    if(identificador==v9) {v9 = x;}
 
  });
}

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(color: Colors.yellow),
    
      child: Column(
        children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: 
                  Column(
                    children: [
                      
                      ElevatedButton(onPressed: (){nextNumber(v1, v1);}, child: Text(this.v1.toString()),),
                    ],
                    )
              ),            
              Card(
                child: 
                  Column(
                    children: [
                      Text(this.v2.toString()),
                      ElevatedButton(onPressed: (){nextNumber(v2, v2);}, child: Icon(Icons.next_plan)),
                    ],
                    )
              ),
              Card(
                child: 
                  Column(
                    children: [
                      Text(this.v3.toString()),
                      ElevatedButton(onPressed: (){nextNumber(v3, v3);}, child: Icon(Icons.next_plan)),
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
                      Text(this.v4.toString()),
                      ElevatedButton(onPressed: (){nextNumber(v4, v4);}, child: Icon(Icons.next_plan)),
                    ],
                    )
              ),            
              Card(
                child: 
                  Column(
                    children: [
                      Text(this.v5.toString()),
                      ElevatedButton(onPressed: (){nextNumber(v5, v5);}, child: Icon(Icons.next_plan)),
                    ],
                    )
              ),
              Card(
                child: 
                  Column(
                    children: [
                      Text(this.v6.toString()),
                      ElevatedButton(onPressed: (){nextNumber(v6, v6);}, child: Icon(Icons.next_plan)),
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
                      Text(this.v7.toString()),
                      ElevatedButton(onPressed: (){nextNumber(v7, v7);}, child: Icon(Icons.next_plan)),
                    ],
                    )
              ),            
              Card(
                child: 
                  Column(
                    children: [
                      Text(this.v8.toString()),
                      ElevatedButton(onPressed: (){nextNumber(v8, v8);}, child: Icon(Icons.next_plan)),
                    ],
                    )
              ),
              Card(
                child: 
                  Column(
                    children: [
                      Text(this.v9.toString()),
                      ElevatedButton(onPressed: (){nextNumber(v9, v9);}, child: Icon(Icons.next_plan)),
                    ],
                    )
              )
            ],
          )
        ]
        ),
    );
  }
}