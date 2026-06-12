import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:malam_portfolio/constants/app_icon.dart';
import 'package:malam_portfolio/utils/extensions.dart';
import 'package:malam_portfolio/widgets/seo_text.dart';

class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            child: PopupLanguageSwitchItem(
              icon: AppIcon.us,
              language: 'English',
            ),
          ),
          PopupMenuItem(
            child: PopupLanguageSwitchItem(icon: AppIcon.bn, language: 'বাংলা'),
          ),
        ];
      },
      child: Row(
        children: [
          Icon(Icons.language, color: context.colorScheme.onSurface),
          Gap(4),
          SEOText(
            Localizations.localeOf(context).languageCode == 'en' ? 'En' : 'বাং',
          ),
        ],
      ),
    );
  }
}

class PopupLanguageSwitchItem extends StatelessWidget {
  const PopupLanguageSwitchItem({
    super.key,
    required this.icon,
    required this.language,
  });
  final String language;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: 18, height: 18),
        Gap(8),
        SEOText(language),
      ],
    );
  }
}
