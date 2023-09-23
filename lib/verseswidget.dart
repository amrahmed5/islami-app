import 'package:flutter/material.dart';
import 'package:islamic_app/Quran/chapter_details_screen.dart';

class verses_widget extends StatelessWidget {
  String content;
  int index;

  verses_widget(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8),
        child: Text(
          '$content{${index + 1}}',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ));
  }
}
