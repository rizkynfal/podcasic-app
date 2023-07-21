import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcasic_app/splash_screen_page.dart';
import 'constant/constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GoogleFonts.pendingFonts([
    GoogleFonts.nunitoSans(),
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(textTheme),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryPurpleColor),
        useMaterial3: true,
      ),
      home: const SplashScreenPage(),
      routes: const <String, WidgetBuilder>{},
    );
  }
}
