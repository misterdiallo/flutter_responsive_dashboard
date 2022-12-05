import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant/app_colors.dart';
import 'package:responsive_dashboard/constant/constant_design.dart';

class TabletScaffold extends StatefulWidget {
  final Widget content;
  const TabletScaffold({super.key, required this.content});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: myAppBar,
      drawer: myDrawer,
      body: SafeArea(child: widget.content),
    );
  }
}
