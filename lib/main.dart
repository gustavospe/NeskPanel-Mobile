import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:MobilePanel/core/secrets/keys.dart';

// Imports das telas do aplicativo em seus respectivos diretórios.
import 'package:MobilePanel/presentation/pages/login_screen.dart';
import 'package:MobilePanel/presentation/pages/home_screen.dart';
import 'package:MobilePanel/presentation/pages/suporte_screen.dart';
import 'package:MobilePanel/presentation/pages/newsletter_screen.dart';
import 'package:MobilePanel/presentation/pages/portifolio_screen.dart';
import 'package:MobilePanel/presentation/pages/sobre_screen.dart';
// ------------------------------------------------------------

import 'package:flutter/material.dart'; // import do MaterialApp
import 'package:provider/provider.dart'; // import do Provider
import 'package:MobilePanel/presentation/theme/theme_provider.dart'; // import do ThemeProvider

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: Constants.supabaseUrl,
    anonKey: Constants.supabaseAnonKey,
  );

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MobilePanel(),
    ),
  );
}

class MobilePanel extends StatelessWidget {
  const MobilePanel({super.key});

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
