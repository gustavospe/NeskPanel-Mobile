import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:neskpanel_mobile/presentation/theme/colors.dart';
import 'package:neskpanel_mobile/presentation/theme/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tela();
  }
}

class Tela extends StatefulWidget {
  const Tela({super.key});

  @override
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(
          context,
        ).scaffoldBackgroundColor.withOpacity(0.85),
        elevation: 2, // uma sombra suave para destacar
        title: Text("SideBar", style: GoogleFonts.roboto()),
        actions: [
          IconButton(
            icon: Icon(
              themeProvider.isDarkMode ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: themeProvider.toggleTheme,
          ),
        ],
      ),
      body: DefaultTextStyle(
        style: GoogleFonts.roboto(
          color: Theme.of(context).textTheme.bodyMedium?.color,
          fontSize: 14,
        ),
        child: const Text("Sim está é a tela principal do app"),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: AppColor.BgColorSecondary),
              child: Text(
                "Menu",
                style: GoogleFonts.roboto(
                  color: AppColor.TextTitule,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: Text("Home", style: GoogleFonts.roboto()),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: Text("Login", style: GoogleFonts.roboto()),
              onTap: () {
                Navigator.pushNamed(context, "login");
              },
            ),
            ListTile(
              leading: const Icon(Icons.build),
              title: Text("Suporte", style: GoogleFonts.roboto()),
              onTap: () {
                Navigator.pushNamed(context, "Suporte");
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: Text("Newsletter", style: GoogleFonts.roboto()),
              onTap: () {
                Navigator.pushNamed(context, "Newsletter");
              },
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: Text("Portifolio", style: GoogleFonts.roboto()),
              onTap: () {
                Navigator.pushNamed(context, "Portifolio");
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: Text("Sobre", style: GoogleFonts.roboto()),
              onTap: () {
                Navigator.pushNamed(context, "Sobre");
              },
            ),
          ],
        ),
      ),
    );
  }
}
