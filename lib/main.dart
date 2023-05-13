import 'package:flutter/material.dart';
import 'package:ibarra/pagina1.dart';
import 'package:ibarra/pagina2.dart';

void main() {
  runApp(MaterialApp(
    title: 'Dulcería Alegrías',
    debugShowCheckedModeBanner: false,
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/': (context) => const Pantalla1(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/segunda': (context) => const Pantalla2(),
    },
  ));
}
