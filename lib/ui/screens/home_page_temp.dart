import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Argentina campeón Qatar 2022'),
            subtitle: Text('Messi balón de oro Qatar 2020'),
          ),
          Divider(
            thickness: 2.0,
            color: Color.fromARGB(255, 62, 45, 186),
          ),
          ListTile(
            title: Text('Francia subcampeón Qatar 2022'),
            subtitle: Text('Mbapé balón de plata'),
          ),
          Divider(
            thickness: 2.0,
            color: Color.fromARGB(255, 62, 45, 186),
            ),
            ListTile(
            title: Text('Croacia tercer lugar Qatar 2022'),
            subtitle: Text('Modric balón de bronce'),
          ),
            Divider(
            thickness: 2.0,
            color: Color.fromARGB(255, 62, 45, 186),
        ),
        ],
      ),
    );
  }
}