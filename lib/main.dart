import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/ui/screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Componentes',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
         //Locale('en', 'US'), //para inglés americano
         Locale('es', 'MX'), //para español mexicano

      ],
      //home: HomePageTemp(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomePageTemp(),
        'alert':(BuildContext context) => const AlertsScreen(),
        'inputs': (BuildContext context) => const InputsScreen(),
        //crear entrada un nuevo menu
      },
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => const AlertsScreen());

      },
      theme: ThemeData.dark().copyWith(
        //color primario
        primaryColor: Colors.indigo,// asugnará color a los iconos de la app
        //AppBar theme
        appBarTheme: const AppBarTheme(
          color: Colors.blueGrey, 
          elevation: 0,
        )


      ) //propiedad de tema oscuro para toda la aplicación




      );
  
  }
}