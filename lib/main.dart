import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcasic_app/screen/home_screen/home_screen.dart';
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
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      color: Colors.transparent,
      title: 'Podcasic App',
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(textTheme),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryPurpleColor),
        useMaterial3: true,
      ),
      home: const SplashScreenPage(),
      routes: <String, WidgetBuilder>{
        homPage: (BuildContext context) => const HomeScreen(),
      },
    );
  }
}
