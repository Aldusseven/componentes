import 'package:componentes/providers/menu_provider.dart';
import 'package:componentes/ui/screens/alerts_screen.dart';
import 'package:componentes/utils/icons_mapping.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  

  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  //Recuperación de datos del archivo jason
  //print(menuProvider.opciones);
  // menuProvider.loadData().then((opciones) {
  //   print('_lista');
  //   print(opciones);

  // });
  // return  ListView(
  //       children: _listaItems(),
  // );
  return FutureBuilder(
    future: menuProvider.loadData(), //Indicando lo que queremos esperar
    initialData: const [],
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      print('builder: ');
      print(snapshot.data);
      return ListView(
        children: _listaItems(snapshot.data as List<dynamic>, context),
      );
    },
    );    
}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];
  IconMapping iconMap = const IconMapping();

  data.forEach((opt) {
    final tile = ListTile(
      title: Text(opt['texto']),
      leading: iconMap.getIcon(opt['icon']),
        trailing: const Icon(
          Icons.keyboard_arrow_right,
          color: Colors.blue,
        ),
        subtitle: Text(opt['texto2']),
        onTap: () {
          // final route  = MaterialPageRoute(builder: (context) {
          //   return const AlertScreen();
          // }); //manda a la página que indica la lista de componentes
          Navigator.pushNamed(context, opt['ruta']);
          Navigator.pushNamed(context, opt['ruta']);
          //Navigator.push(context, route);
        },
    );
    opciones
    ..add(tile)
    ..add(const Divider());
  });
  return opciones;
  // return const [
  //         ListTile(
  //           title: Text('Argentina campeón Qatar 2022'),
  //           subtitle: Text('Messi balón de oro Qatar 2020'),
  //         ),
  //         Divider(
  //           thickness: 3.0,
  //           color: Color.fromARGB(255, 62, 45, 186),
  //         ),
  //         ListTile(
  //           title: Text('Francia subcampeón Qatar 2022'),
  //           subtitle: Text('Mbapé balón de plata Qatar 2022'),
  //         ),
  //         Divider(
  //           thickness: 3.0,
  //           color: Color.fromARGB(255, 62, 45, 186),
  //           ),
  //           ListTile(
  //           title: Text('Croacia tercer lugar Qatar 2022'),
  //           subtitle: Text('Modric balón de bronce Qatar 2022'),
  //         ),
  //           Divider(
  //           thickness: 3.0,
  //           color: Color.fromARGB(255, 62, 45, 186),
  //         ),
  //       ];
}