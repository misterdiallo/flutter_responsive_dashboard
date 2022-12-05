import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant/app_colors.dart';
import 'package:responsive_dashboard/constant/data/app_basic_data.dart';
import 'package:responsive_dashboard/routes.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: AppBaseData.name,
      theme: ThemeData(
        primarySwatch: AppColors.primary,
      ),
      routerConfig: router,
      // initialRoute: "/",
      // home: const ResponsiveLayout(
      //   mobileScaffold: MobileScaffold(),
      //   tabletScaffold: TabletScaffold(),
      //   desktopScaffold: DesktopScaffold(),
      // ),
      // onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
