import 'package:flutter/material.dart';
import 'package:malam_portfolio/l10n/app_localizations.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppLogo(),
        Spacer(),
        AppMenus(),
        LanguageToggle(),
        Spacer(),
        ThemeToggle(),
      ],
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
        Text(AppLocalizations.of(context)!.home),
        Text("About"),
        Text("Skills & Projects"),
        Text("Experience & Publication"),
        Text("Contact"),
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
          PopupMenuItem(child: Text('French')),
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
