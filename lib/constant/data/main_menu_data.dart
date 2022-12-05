// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class MainMenuData {
  String name;
  IconData? icon;
  Widget page;
  String route;
  String type_opening;

  MainMenuData({
    required this.name,
    this.icon,
    required this.page,
    required this.route,
    this.type_opening = "page",
  });
}

List<MainMenuData> listMainMenu = [
  MainMenuData(
    name: "Dashboard",
    page: Container(),
    icon: Icons.analytics,
    route: "/",
  ),
  MainMenuData(
    name: "Commandes",
    page: Container(),
    icon: Icons.flight_takeoff,
    route: "/stock",
  ),
  MainMenuData(
    name: "Articles",
    page: Container(),
    icon: Icons.token,
    route: "/product",
  ),
  MainMenuData(
    name: "Ventes",
    page: Container(),
    icon: Icons.add_shopping_cart,
    route: "/sale",
  ),
  MainMenuData(
    name: "Personel",
    page: Container(),
    icon: Icons.supervisor_account,
    route: "/staff",
  ),
  MainMenuData(
    name: "Paramètre",
    page: Container(),
    icon: Icons.settings,
    route: "/setting",
  ),
  MainMenuData(
    name: "Deconnexion",
    page: Container(),
    icon: Icons.logout_rounded,
    route: "/logout",
  ),
];
