import 'package:flutter/material.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Text('¡Hola mundo!'),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}