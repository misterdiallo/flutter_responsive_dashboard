import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant/app_colors.dart';
import 'package:responsive_dashboard/constant/data/app_basic_data.dart';
import 'package:responsive_dashboard/constant/data/main_menu_data.dart';

var myAppBar = AppBar(
  backgroundColor: AppColors.appbarBackground,
  title: Text(AppBaseData.name),
);

var myDrawer = Drawer(
  child: Column(
    children: [
      DrawerHeader(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              AppBaseData.icon,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              AppBaseData.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: listMainMenu.length,
          itemBuilder: (context, index) {
            MainMenuData menu = listMainMenu[index];
            return ListTile(
              leading: menu.icon != null
                  ? Icon(
                      menu.icon,
                    )
                  : null,
              title: Text(menu.name),
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
                  color: AppColors.grey400,
                ),
                children: <InlineSpan>[
                  TextSpan(
                    text: AppBaseData.version,
                    style: TextStyle(
                      color: AppColors.grey800,
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
                  color: AppColors.grey400,
                ),
                children: <InlineSpan>[
                  TextSpan(
                    text: AppBaseData.author,
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColors.grey800,
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
