import 'package:flutter/material.dart';
import 'package:responsive_dashboard/ui/menu/rail.dart';

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
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Rail(),
          Expanded(
            child: Stack(
              children: [widget.content],
            ),
          ),
        ],
      ),
    );
  }
}
