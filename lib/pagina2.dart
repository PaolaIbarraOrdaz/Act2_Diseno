import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Sobre mi'),
            backgroundColor: const Color(0xffb80303),
            actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
            elevation: 8,
            bottom: TabBar(
              indicatorColor: Colors.amberAccent,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Creates border
                  color: const Color(0xffffffff)),
              tabs: [
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/4532/4532586.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/2618/2618546.png'),
                ),
                Tab(
                  icon: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/3731/3731690.png'),
                ),
              ],
            ),
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
                  title: const Text('Sobre mi'),
                  onTap: () {
                    Navigator.pushNamed(context, '/segunda');
                  },
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(15),
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    const Image(
                      image: NetworkImage(
                          'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/cumplea%C3%B1os.jpg?raw=true'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Cumpleaños',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    const Text(
                      'Yo nací el 31 de marzo de 2005, pese 3 kilos, erá un bebé muy gordo. '
                      'Actualmente cumplí 18 años y estoy en mi último año de preparatoria. '
                      'Usualmente celebró mis cumpleaños junto con mis hermanos, ya que nuestros cumpleaños son cercanos. ',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(15),
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    const Image(
                      image: NetworkImage(
                          'https://concepto.de/wp-content/uploads/2015/08/familia-extensa-e1591818033557.jpg'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Mi familia',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    const Text(
                      'Mi familia está conformada por 6 integrantes, mi papá, mi mamá y mis hermanos. '
                      'Siempre hemos estado juntos, yo soy la segunda hija de mis papás, mi hermana mayor '
                      'esta en la universidad y mis hermanos menores están por salir de la primaria.',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(15),
                shadowColor: Colors.red,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    const Image(
                      image: NetworkImage(
                          'https://github.com/PaolaIbarraOrdaz/dulceriaAlegrias_img/blob/main/graduacion.jpg?raw=true'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Escuela',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                    const Text(
                      'Como mencione, estoy cursando el 6to semestre de la preparatoria en la especialidad de programación. '
                      'Estoy por entrar a la universidad y en estos momentos me encuentro preparandome para mi examen de admisión. '
                      'A lo largo de mi vida, he tomado cursos que me ayudaron a fortalecer mis conocimientos, preparandome para la vida laboral.',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
