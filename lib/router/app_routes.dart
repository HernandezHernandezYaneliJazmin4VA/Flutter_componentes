import 'package:flutter/material.dart';
import 'package:fluttercomponentes/models/models.dart';
import 'package:fluttercomponentes/screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOption = <MenuOption>[
    MenuOption(
        icon: Icons.remove,
        name: "Listview tipo 1",
        route: "listview1",
        screen: ListView1Screen()),
    MenuOption(
      icon: Icons.remove,
      name: "Listview tipo 2",
      route: "listview2",
      screen: ListView2screen(),
    ),
    MenuOption(
      icon: Icons.remove,
      name: "tabbar y tabview",
      route: "TabBar",
      screen: TabScreen(),
    ),
  ];
//Creamos lista map donde obtiene todas las rutas
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //creamos lista Map para guardar las rutas actuales del proyecto
    //asignamos la ruta home
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    //ciclo para recorrer todas las pantall<z
    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
