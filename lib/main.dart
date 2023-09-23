import 'package:flutter/material.dart';
import 'package:islamic_app/Quran/chapter_details_screen.dart';
import 'package:islamic_app/ui/home/Home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          cardTheme: CardTheme(surfaceTintColor: Colors.white),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 28)),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedIconTheme: IconThemeData(color: Colors.black, size: 45),
              unselectedIconTheme:
                  IconThemeData(color: Colors.white, size: 35)),
          scaffoldBackgroundColor: Colors.transparent,
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color(
            0xFFB79357,
          )),
          primaryColor: Color(0xFFB79357)),
      routes: {
        Home_Screen.routeName: (_) => Home_Screen(),
        Chapter_Details_Screen.routeName: (_) => Chapter_Details_Screen()
      },
      initialRoute: Home_Screen.routeName,
    );
  }
}
