import 'package:flutter/material.dart';
import 'package:malam_portfolio/utils/app_size.dart';
import 'package:malam_portfolio/utils/extensions.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      alignment: Alignment.center,
      color: Colors.amber, //Theme.of(context).appBarTheme.backgroundColor,
      height: context.insets.appBarHeight,
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: Insets.maxWidth),
        child: Row(
          children: [
            AppLogo(),
            Spacer(),
            if (context.isDesktop) AppMenus(),
            Spacer(),
            LanguageToggle(),
            ThemeToggle(),
            if (!context.isDesktop) Icon(Icons.menu_outlined),
          ],
        ),
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Logo");
  }
}

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(context.texts.home),
        const SizedBox(width: 12),
        Text(context.texts.about),
        const SizedBox(width: 12),
        Text(context.texts.nav_skills_projects),
        const SizedBox(width: 12),
        Text(context.texts.nav_experience_publication),
        const SizedBox(width: 12),
        Text(context.texts.nav_contact),
      ],
    );
  }
}

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(child: Text('English')),
          PopupMenuItem(child: Text('Bangla')),
        ];
      },
    );
  }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: false, onChanged: ((value) {}));
  }
}
