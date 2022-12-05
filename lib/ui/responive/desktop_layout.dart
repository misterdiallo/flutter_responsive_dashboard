import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant/app_colors.dart';
import 'package:responsive_dashboard/ui/menu/menu.dart';

class DesktopScaffold extends StatefulWidget {
  final Widget content;
  const DesktopScaffold({super.key, required this.content});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! Menu
            const Menu(),
            //! Content
            Expanded(
              child: Stack(
                children: [
                  widget.content,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
