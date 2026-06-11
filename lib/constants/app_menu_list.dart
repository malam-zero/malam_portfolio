import 'package:flutter/widgets.dart';
import 'package:malam_portfolio/routes/app_routes.dart';
import 'package:malam_portfolio/utils/extensions.dart';

class AppMenuList {
  static List<AppMenu> getItems(BuildContext context) {
    return [
      AppMenu(title: context.texts.home, path: AppRoutes.home),
      AppMenu(title: context.texts.about, path: AppRoutes.home),
      AppMenu(title: context.texts.nav_skills_projects, path: AppRoutes.skillPro),
      AppMenu(title: context.texts.nav_experience_publication, path: AppRoutes.expPub),
      AppMenu(title: context.texts.nav_contact, path: AppRoutes.contact),
    ];
  }
}

class AppMenu {
  final String title;
  final String path;
  //   final String? iconPath;
  //   AppMenu({this.iconPath, required this.path, required this.title});
  AppMenu({required this.path, required this.title});
}
