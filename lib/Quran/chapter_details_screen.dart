import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/verseswidget.dart';

class Chapter_Details_Screen extends StatefulWidget {
  static const String routeName = 'chapter_details';

  @override
  State<Chapter_Details_Screen> createState() => _Chapter_Details_ScreenState();
}

class _Chapter_Details_ScreenState extends State<Chapter_Details_Screen> {
  @override
  Widget build(BuildContext context) {
    Chapter_Details_Args args =
        ModalRoute.of(context)?.settings.arguments as Chapter_Details_Args;
    if (verses.isEmpty) {
      LoadData(args.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/main_background.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: verses.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
                  elevation: 20,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return verses_widget(verses[index], index);
                    },
                    itemCount: verses.length,
                    separatorBuilder: (context, index) => Container(
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: 2,
                      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 6),
                    ),
                  ),
                )),
    );
  }
}

List<String> verses = [];

void LoadData(int index) async {
  String filecontent =
      await rootBundle.loadString("assets/files/${index + 1}.txt");
  verses = filecontent.split("\n");
  setState(() {});
}

void setState(Null Function() param0) {}

class Chapter_Details_Args {
  String title;
  int index;

  Chapter_Details_Args(this.title, this.index);
}
