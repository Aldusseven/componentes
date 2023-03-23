import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
 const AlertsScreen({super.key});

void _mostrarAlert(BuildContext context){
  showDialog(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.black26,
    builder: (context) {
      return AlertDialog(
        backgroundColor: const Color.fromARGB(255, 216, 218, 225),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        title:const Text('Título de la Alerta'),
        content: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contenido de la Alerta'),
        FlutterLogo(
          size: 50.0,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Aceptar')),
          TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancelar')),

      ],
    );
  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Screen'),
      ),
      body:  Center(
        child: ElevatedButton(
          onPressed: () => _mostrarAlert(context),
          child: const Text('Mostrar alerta'),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.keyboard_return_outlined),
        ),
    );
  }
}

