import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const FinanceMateApp());
}

class FinanceMateApp extends StatelessWidget {
  const FinanceMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance Mate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E73BE), // Biru elegan (inspirasi BCA)
          primary: const Color(0xFF1E73BE),
          secondary: const Color(0xFFFFC107), // Aksen emas (inspirasi Mandiri)
          surface: const Color(0xFFF8F9FA), // Warna latar yang lembut
          background: const Color(0xFFF5F6FA),
          onPrimary: Colors.white,
          onSecondary: Colors.black87,
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F6FA),

        // 🌟 AppBar yang elegan
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E73BE),
          foregroundColor: Colors.white,
          elevation: 2,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 0.5,
          ),
        ),

        // 🔘 Tombol utama (ElevatedButton)
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1E73BE),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),

        // 🟠 Floating Action Button
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFFFFC107),
          foregroundColor: Colors.black,
        ),

        // 🖋️ Teks
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 15,
            color: Colors.black87,
            fontWeight: FontWeight.w400,
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E73BE),
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
