import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant/app_colors.dart';
import 'package:responsive_dashboard/ui/menu/menu.dart';

class MobileScaffold extends StatefulWidget {
  final Widget content;
  const MobileScaffold({super.key, required this.content});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: AppColors.background,
      drawer: const Menu(),
      body: SafeArea(
        child: Stack(
          children: [
            widget.content,
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(
                    onPressed: () {
                      _globalKey.currentState!.openDrawer();
                    },
                    icon: const Icon(
                      Icons.sort,
                      size: 30.0,
                      color: AppColors.indigo,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
