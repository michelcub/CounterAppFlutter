import 'package:flutter/material.dart';
import 'package:fluttertest/presentation/screens/counter_functions_screen.dart';
//import 'package:fluttertest/presentation/screens/counter_screen.dart';

void main(){

  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // dentro de material app va el codigo de la app
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      //se usa para configurar el thema que vamos a usar
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.red,
      ),
      //el scafol da las bases para poder contruir los elementos
      home:const CounterFunctionsScreen()

    );
  }
}