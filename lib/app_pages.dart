import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard/ui/responive/responsive_layout.dart';
import 'package:responsive_dashboard/ui/screen/dashboard/dashboard_binding.dart';
import 'package:responsive_dashboard/ui/screen/dashboard/dashboard_screen.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: "/",
      page: () => ResponsiveLayout(content: DashboadScreen()),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: "/stock",
      page: () => const ResponsiveLayout(
        content: Align(
          alignment: Alignment.center,
          child: Text("stock"),
        ),
      ),
    ),
    GetPage(
      name: "/product",
      page: () => const ResponsiveLayout(
        content: Align(
          alignment: Alignment.center,
          child: Text("product"),
        ),
      ),
    ),
    GetPage(
      name: "/sale",
      page: () => const ResponsiveLayout(
        content: Align(
          alignment: Alignment.center,
          child: Text("sale"),
        ),
      ),
    ),
    GetPage(
      name: "/vente",
      page: () => const ResponsiveLayout(
        content: Align(
          alignment: Alignment.center,
          child: Text("vente"),
        ),
      ),
    ),
    GetPage(
      name: "/staff",
      page: () => const ResponsiveLayout(
        content: Align(
          alignment: Alignment.center,
          child: Text("staff"),
        ),
      ),
    ),
    GetPage(
      name: "/setting",
      page: () => const ResponsiveLayout(
        content: Align(
          alignment: Alignment.center,
          child: Text("setting"),
        ),
      ),
    ),
    GetPage(
      name: "/logout",
      page: () => const ResponsiveLayout(
        content: Align(
          alignment: Alignment.center,
          child: Text("logout"),
        ),
      ),
    ),

    // GetPage(
    //   name: "/",
    //   page: () => DashboardPage(),
    //   bindings: [
    //     OverviewBinding(),
    //   ],
    // ),
  ];
}
