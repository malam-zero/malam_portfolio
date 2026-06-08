import 'package:flutter/material.dart';
import 'package:malam_portfolio/widgets/my_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyAppbar());
  }
}
