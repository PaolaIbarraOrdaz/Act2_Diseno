import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dulcería Alegrías'),
        backgroundColor: const Color(0xffb80303),
        actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
        elevation: 8,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: Color(0xffb80303)),
              accountName: Text(
                "Paola Ibarra Ordaz",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              accountEmail: Text(
                "a.20308051280514@cbtis128.edu.mx",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.family_restroom_rounded,
              ),
              title: const Text('Sobre Mi'),
              onTap: () {
                Navigator.pushNamed(context, '/segunda');
              },
            ),
          ],
        ),
      ),
      body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: ListView(
            children: [
              const Text(
                "Pagina Inicial",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 2.5,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20, left: 15, right: 15),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Text(
                  "Paola Ibarra Ordaz",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(34),
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Color(0xffb40808),
                      width: 3.0,
                    ),
                    bottom: BorderSide(
                      color: Color(0xffb40808),
                      width: 3.0,
                    ),
                  ),
                ),
                child: const Image(
                  image: NetworkImage(
                      'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/received_1364725050678201.jpeg?raw=true'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Text(
                  "Grupo 6-I   Especialidad: Programación",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          )),
    );
  }
}

Card misDatos() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
    margin: const EdgeInsets.all(15),
    shadowColor: Colors.red,
    elevation: 10,
    child: Column(
      children: const <Widget>[
        Text("Grupo 6-I   Especialidad: Programación",
            textAlign: TextAlign.center),
      ],
    ),
  );
}
