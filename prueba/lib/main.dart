import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:prueba/my_Home_page.dart';

import 'DynamicList.dart';

Future<void> main() async {
 await obtenerdatos();
log('que pasa, me imprimo primero');

  runApp(const MyApp());
}


Future<void> obtenerdatos() async{
log('Empezo...');
await Future.delayed(Duration(seconds: 2),(){
  log('Estoy dentro');
});
log('estoy fuera');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 104, 58, 183)),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'titulo',),
    );
  }
}


