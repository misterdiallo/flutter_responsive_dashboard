import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard/constant/data/main_menu_data.dart';

class Rail extends StatefulWidget {
  const Rail({Key? key}) : super(key: key);

  @override
  State<Rail> createState() => _RailState();
}

class _RailState extends State<Rail> {
  @override
  Widget build(BuildContext context) {
    var selectedIndex = 0;
    var route = ModalRoute.of(context);
    List<NavigationRailDestination> listRails = [];
    for (var i = 0; i < listMainMenu.length; i++) {
      var element = listMainMenu[i];
      if (route!.settings.name == element.route) {
        selectedIndex = i;
      }
      listRails.add(NavigationRailDestination(
        label: Text(element.name),
        icon: Icon(element.icon),
        selectedIcon: Icon(
          element.icon,
          color: Colors.indigoAccent,
        ),
      ));
    }

    return SingleChildScrollView(
      primary: false,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minHeight: MediaQuery.of(context).size.height),
        child: IntrinsicHeight(
          child: NavigationRail(
            selectedIndex: selectedIndex,
            leading: InkWell(
              onTap: () => Get.toNamed("/"),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Icon(
                  Icons.add_to_drive,
                  size: 32,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            onDestinationSelected: (value) {
              Get.toNamed(listMainMenu[value].route);
            },
            destinations: listRails,
          ),
        ),
      ),
    );
  }
}
