import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_dashboard/page/home.dart';
import 'package:responsive_dashboard/page/product.dart';
import 'package:responsive_dashboard/page/service.dart';
import 'package:responsive_dashboard/responsive/responsive_layout.dart';

GoRouter router = GoRouter(
  errorBuilder: (context, state) => ResponsiveLayout(
    content: Center(
      child: ElevatedButton(
        onPressed: () => context.go("/"),
        child: const Text("Go to home page"),
      ),
    ),
  ),
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ResponsiveLayout(
          content: Home(),
        );
      },
      // redirect: (context, state) {
      // if (userIsNotLoggedIn) {
      //   return "/login";
      // }
      // return "/";
      // },
      routes: <RouteBase>[
        GoRoute(
          path: 'product',
          builder: (BuildContext context, GoRouterState state) {
            return const ResponsiveLayout(
              content: Product(),
            );
          },
        ),
        GoRoute(
          path: 'service',
          builder: (BuildContext context, GoRouterState state) {
            return const ResponsiveLayout(
              content: Service(),
            );
          },
        ),
        GoRoute(
          path: 'service',
          builder: (BuildContext context, GoRouterState state) {
            return const ResponsiveLayout(
              content: Center(child: Text("Contact")),
            );
          },
        ),
      ],
    ),
  ],
);

class RouteModel {
  String name;
  String route;
  bool isFullScreen;
  Widget page;
  RouteModel({
    required this.name,
    required this.route,
    this.isFullScreen = false,
    required this.page,
  });
}

class Routes {
  static RouteModel home = RouteModel(
      name: "home",
      route: "/",
      page: const Center(
        child: Text("Homepage"),
      ));
  static final product = RouteModel(
      name: "product",
      route: "/product",
      page: const Center(
        child: Text("Product"),
      ));
  static final error = RouteModel(
      name: "error",
      route: "/error",
      page: const Center(
        child: Text("Error Page"),
      ));
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: (_) => Routes.home.page,
            fullscreenDialog: Routes.home.isFullScreen);
      case "/product":
        return MaterialPageRoute(
            builder: (_) => Routes.product.page,
            fullscreenDialog: Routes.product.isFullScreen);
      default:
        return MaterialPageRoute(
            builder: (_) => Routes.error.page,
            fullscreenDialog: Routes.error.isFullScreen);
    }
  }
}
