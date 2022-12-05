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
    name: "Home",
    page: Container(),
    icon: Icons.home_filled,
    route: "/",
  ),
  MainMenuData(
    name: "Product",
    page: Container(),
    icon: Icons.production_quantity_limits_rounded,
    route: "/product",
  ),
  MainMenuData(
    name: "Service",
    page: Container(),
    icon: Icons.supervised_user_circle_rounded,
    route: "/service",
  ),
  MainMenuData(
    name: "Contact",
    page: Container(),
    icon: Icons.contact_mail,
    route: "/contact",
  ),
  MainMenuData(
    name: "Logout",
    page: Container(),
    icon: Icons.logout,
    route: "/logout",
  ),
];
