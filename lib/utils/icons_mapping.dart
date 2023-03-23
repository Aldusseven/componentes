import 'package:flutter/material.dart';

class IconMapping {
  //Definir un mapa
final _icons = const <String, IconData>{
'add_alert' : Icons.add_alert,
'input' : Icons.input,
'folder_open' : Icons.folder_open,
'add_data' : Icons.folder_open,
'data' : Icons.data_exploration,
'list' : Icons.list,
'camera' : Icons.camera_alt,
};

const IconMapping();

Icon getIcon(String iconName) {
return Icon(
  _icons[iconName],
  color: Colors.indigoAccent,

);
}
}

