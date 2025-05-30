// Imports das telas do aplicativo em seus respectivos diretórios.
import 'package:SideBarExampleApp/presentation/pages/login_screen.dart';
import 'package:SideBarExampleApp/presentation/pages/home_screen.dart';
import 'package:SideBarExampleApp/presentation/pages/suporte_screen.dart';
import 'package:SideBarExampleApp/presentation/pages/newsletter_screen.dart';
import 'package:SideBarExampleApp/presentation/pages/portifolio_screen.dart';
import 'package:SideBarExampleApp/presentation/pages/sobre_screen.dart';
// ------------------------------------------------------------

import 'package:flutter/material.dart'; // import do MaterialApp
import 'package:provider/provider.dart'; // import do Provider
import 'package:SideBarExampleApp/presentation/theme/theme_provider.dart'; // import do ThemeProvider

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
