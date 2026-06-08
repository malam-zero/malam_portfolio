import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:malam_portfolio/l10n/app_localizations.dart';
import 'package:malam_portfolio/pages/home_page.dart';
import 'package:malam_portfolio/utils/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      supportedLocales: const [Locale('en'), Locale('bn')],
      locale: const Locale('en'),
      home: const HomePage(),
    );
  }
}
