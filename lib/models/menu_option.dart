import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  //seteamos las varables de menu
  ////GET
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuOption({
    //obteniendo el valor de cada variable
    //SET
    required this.route,
    required this.icon,
    required this.name,
    required this.screen,
  });
}
