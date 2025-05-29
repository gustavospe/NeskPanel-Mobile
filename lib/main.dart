import 'package:SideBarExampleApp/ui/login_screen.dart';
import 'package:SideBarExampleApp/ui/home_screen.dart';
import 'package:SideBarExampleApp/ui/suporte_screen.dart';
import 'package:SideBarExampleApp/ui/newsletter_screen.dart';
import 'package:SideBarExampleApp/ui/portifolio_screen.dart';
import 'package:SideBarExampleApp/ui/sobre_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const SideBarExampleApp());
}

class SideBarExampleApp extends StatelessWidget {
  const SideBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      routes: {
        "Home": (context) => const HomeScreen(),
        "login": (context) => const LoginScreen(),
        "Suporte": (context) => const SuporteScreen(),
        "Newsletter": (context) => const NewsletterScreen(),
        "Portifolio": (context) => const PortifolioScreen(),
        "Sobre": (context) => const SobreScreen(),
      },
      initialRoute: "Home",
      );
  }
}


