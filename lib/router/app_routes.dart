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
    MenuOption(
      icon: Icons.remove,
      name: "tipos de botones",
      route: "Buttonview",
      screen: BottonScreen(),
    ),
    MenuOption(
      icon: Icons.remove,
      name: "tipos de Textfield",
      route: "Textfield",
      screen: TextFieldScreen(),
    ),
    MenuOption(
      icon: Icons.remove,
      name: "tipos de Alert Dialog",
      route: "AlertDialog",
      screen: AlertScreen(),
    ),
    MenuOption(
      icon: Icons.remove,
      name: "Card",
      route: "cardview",
      screen: CardScreen(),
    ),
    MenuOption(
      icon: Icons.remove,
      name: "Grid View",
      route: "gridview",
      screen: GridScreen(),
    ),
    MenuOption(
      icon: Icons.remove,
      name: "Iconos",
      route: "Iconos",
      screen: IconScreen(),
    ),
    MenuOption(
      icon: Icons.remove,
      name: "Linear Progress",
      route: "Linear Progress",
      screen: LinearProgressScreen(),
    ),
    MenuOption(
      icon: Icons.remove,
      name: "Slider",
      route: "Slider",
      screen: SliderScreen(),
    ),
    MenuOption(
      icon: Icons.remove,
      name: "CheckBox",
      route: "CheckBox",
      screen: CheckBoxScreen(),
    ),
    MenuOption(
      icon: Icons.remove,
      name: "Radio Button",
      route: "Radioview",
      screen: RadioScreen(),
    ),
    MenuOption(
      icon: Icons.remove,
      name: "Text Button",
      route: "Textbuttonscreen",
      screen: textbuttonScreen(),
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
