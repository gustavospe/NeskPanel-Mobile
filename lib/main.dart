import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:neskpanel_mobile/core/secrets/keys.dart';

// Imports das telas do aplicativo em seus respectivos diretórios.
import 'package:neskpanel_mobile/presentation/pages/login_screen.dart';
import 'package:neskpanel_mobile/presentation/pages/home_screen.dart';
import 'package:neskpanel_mobile/presentation/pages/suporte_screen.dart';
import 'package:neskpanel_mobile/presentation/pages/newsletter_screen.dart';
import 'package:neskpanel_mobile/presentation/pages/portifolio_screen.dart';
import 'package:neskpanel_mobile/presentation/pages/sobre_screen.dart';
// ------------------------------------------------------------

import 'package:flutter/material.dart'; // import do MaterialApp
import 'package:provider/provider.dart'; // import do Provider
import 'package:neskpanel_mobile/presentation/theme/theme_provider.dart'; // import do ThemeProvider

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: Constants.supabaseUrl,
    anonKey: Constants.supabaseAnonKey,
  );

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const neskpanel_mobile(),
    ),
  );
}

class neskpanel_mobile extends StatelessWidget {
  const neskpanel_mobile({super.key});

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
        "Login": (context) => const LoginScreen(),
        "Suporte": (context) => const SuporteScreen(),
        "Newsletter": (context) => const NewsletterScreen(),
        "Portifolio": (context) => const PortifolioScreen(),
        "Sobre": (context) => const SobreScreen(),
      },
      initialRoute: "Login",
    );
  }
}
