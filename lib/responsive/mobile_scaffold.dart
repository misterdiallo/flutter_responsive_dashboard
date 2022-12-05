import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant/app_colors.dart';
import 'package:responsive_dashboard/constant/constant_design.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: myAppBar,
      drawer: myDrawer,
      body: const SafeArea(
        child: Center(
          child: Text("Mobile Screen"),
        ),
      ),
    );
  }
}
