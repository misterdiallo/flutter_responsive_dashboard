import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_dashboard/constant/app_colors.dart';
import 'package:responsive_dashboard/constant/data/app_basic_data.dart';
import 'package:responsive_dashboard/constant/data/main_menu_data.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var route = ModalRoute.of(context);
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => Get.toNamed("/"),
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Icon(
                Icons.add_to_drive,
                size: 64,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listMainMenu.length,
              itemBuilder: (context, index) {
                MainMenuData menu = listMainMenu[index];
                return ListTile(
                  selected: route!.settings.name == menu.route,
                  selectedTileColor: AppColors.indigoAccent.withOpacity(0.3),
                  onTap: () => Get.toNamed(menu.route),
                  title: Text(menu.name),
                  leading: Icon(menu.icon),
                  selectedColor: Colors.white,
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Version: ',
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColors.grey800,
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: AppBaseData.version,
                        style: TextStyle(
                          color: AppColors.grey400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Author: ',
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColors.grey800,
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: AppBaseData.author,
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColors.grey400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
