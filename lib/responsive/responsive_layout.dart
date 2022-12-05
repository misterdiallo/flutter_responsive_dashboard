import 'package:flutter/material.dart';
import 'package:responsive_dashboard/responsive/desktop_scaffold.dart';
import 'package:responsive_dashboard/responsive/mobile_scaffold.dart';
import 'package:responsive_dashboard/responsive/tablet_scaffold.dart';

class ResponsiveLayout extends StatelessWidget {
  // final Widget mobileScaffold;
  // final Widget tabletScaffold;
  // final Widget desktopScaffold;
  final Widget content;
  const ResponsiveLayout({
    super.key,
    // required this.mobileScaffold,
    // required this.tabletScaffold,
    // required this.desktopScaffold,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return MobileScaffold(content: content);
      } else if (constraints.maxWidth < 1000) {
        // return tabletScaffold;
        return TabletScaffold(content: content);
      } else {
        // return desktopScaffold;
        return DesktopScaffold(content: content);
      }
    });
  }
}
