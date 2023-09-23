import 'package:flutter/material.dart';
import 'package:islamic_app/Hadeth/Hadeth_Y=Tab.dart';
import 'package:islamic_app/Quran/Quran_Tab.dart';
import 'package:islamic_app/Radio/Radio_Tab.dart';
import 'package:islamic_app/Tasbeh/Tasbeh_Tab.dart';

class Home_Screen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int Selected_Tab_Index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/main_background.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              Selected_Tab_Index = index;
            });
          },
          currentIndex: Selected_Tab_Index,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/moshaf_blue.png')),
                label: 'Quran'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(
                    AssetImage('assets/images/quran-quran-svgrepo-com.png')),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'Tasbeh'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'Radio'),
          ],
        ),
        body: tabs[Selected_Tab_Index],
      ),
    );
  }

  List<Widget> tabs = [Quran_Tab(), Tasbeh_Tab(), Hadeth_Tab(), Radio_Tab()];
}
