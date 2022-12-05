import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant/app_colors.dart';
import 'package:responsive_dashboard/constant/data/app_basic_data.dart';
import 'package:responsive_dashboard/responsive/desktop_scaffold.dart';
import 'package:responsive_dashboard/responsive/mobile_scaffold.dart';
import 'package:responsive_dashboard/responsive/responsive_layout.dart';
import 'package:responsive_dashboard/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppBaseData.name,
      theme: ThemeData(
        primarySwatch: AppColors.primary,
      ),
      home: const ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
