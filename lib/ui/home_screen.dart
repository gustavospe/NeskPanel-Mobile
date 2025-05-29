import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:SideBarExampleApp/ui/style/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: GoogleFonts.roboto().fontFamily),
      home: const Tela(),
    );
  }
}

class Tela extends StatefulWidget {
  const Tela({super.key});

  @override
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entra21"),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: toggleTheme, // Chama a função corretamente
          ),
        ],
      ),
      body: const Text("Sim está é a tela principal do app"),
      backgroundColor: AppColor.BgColorPrimary,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: AppColor.BgColorSecondary),
              child: Text(
                "Menu",
                style: TextStyle(
                  color: AppColor.TextTitule,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text("Login"),
              onTap: () {
                Navigator.pushNamed(context, "login");
              },
            ),
            ListTile(
              leading: const Icon(Icons.build),
              title: const Text("Suporte"),
              onTap: () {
                Navigator.pushNamed(context, "Suporte");
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text("Newsletter"),
              onTap: () {
                Navigator.pushNamed(context, "Newsletter");
              },
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text("Portifolio"),
              onTap: () {
                Navigator.pushNamed(context, "Portifolio");
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("Sobre"),
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
