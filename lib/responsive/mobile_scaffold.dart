import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant/app_colors.dart';
import 'package:responsive_dashboard/constant/constant_design.dart';

class MobileScaffold extends StatefulWidget {
  final Widget content;
  const MobileScaffold({super.key, required this.content});

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
      body: SafeArea(
        child: widget.content,
      ),
    );
  }
}
