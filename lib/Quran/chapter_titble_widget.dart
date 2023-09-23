import 'package:flutter/material.dart';
import 'package:islamic_app/Quran/chapter_details_screen.dart';

class Chapter_Title_Widget extends StatelessWidget {
  String title;
  int index;

  Chapter_Title_Widget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Chapter_Details_Screen.routeName,
            arguments: Chapter_Details_Args(title, index));
      },
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          )),
    );
  }
}
