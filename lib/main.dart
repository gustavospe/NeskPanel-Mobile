// Imports das telas do aplicativo em seus respectivos diretórios.
import 'package:SideBarExampleApp/ui/login_screen.dart';
import 'package:SideBarExampleApp/ui/home_screen.dart';
import 'package:SideBarExampleApp/ui/suporte_screen.dart';
import 'package:SideBarExampleApp/ui/newsletter_screen.dart';
import 'package:SideBarExampleApp/ui/portifolio_screen.dart';
import 'package:SideBarExampleApp/ui/sobre_screen.dart';
// ------------------------------------------------------------

import 'package:flutter/material.dart'; // import do MaterialApp
import 'package:provider/provider.dart'; // import do Provider
import 'package:SideBarExampleApp/ui/style/theme_provider.dart'; // import do ThemeProvider

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const SideBarExampleApp(),
    ),
  );
}

class SideBarExampleApp extends StatelessWidget {
  const SideBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeProvider.currentTheme,
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
