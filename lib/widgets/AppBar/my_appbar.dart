import 'package:flutter/material.dart';
import 'package:malam_portfolio/constants/app_menu_list.dart';
import 'package:malam_portfolio/utils/app_size.dart';
import 'package:malam_portfolio/utils/app_text_styles.dart';
import 'package:malam_portfolio/utils/extensions.dart';
import 'package:malam_portfolio/widgets/AppBar/appbar_drawer_icon.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      alignment: Alignment.center,
      color: context.theme.appBarTheme.backgroundColor,
      height: context.insets.appBarHeight,
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: Insets.maxWidth),
        child: Row(
          children: [
            AppLogo(),
            Spacer(),
            if (context.isDesktop) LargeMenu(),
            Spacer(),
            LanguageToggle(),
            ThemeToggle(),
            if (!context.isDesktop) AppbarDrawerIcon(),
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

class LargeMenu extends StatelessWidget {
  const LargeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AppMenuList.getItems(context)
          .map(
            (AppMenu e) => LargeAppBarMenuItem(
              isSelected: true,
              text: e.title,
              onTap: () {},
            ),
          )
          .toList(),
    );
  }
}

class LargeAppBarMenuItem extends StatelessWidget {
  const LargeAppBarMenuItem({
    super.key,
    required this.isSelected,
    required this.text,
    required this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.md,
          vertical: Insets.xsm,
        ),
        child: Text(text, style: SmallTextStyles().bodyLgMedium),
      ),
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
