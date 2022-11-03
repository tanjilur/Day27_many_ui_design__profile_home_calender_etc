import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uidesign/widget/brandcolors.dart';

class Homepagee extends StatelessWidget {
  const Homepagee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        actions: [Icon(Icons.search)],
        backgroundColor: bgColor,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundColor: aTextColorDark,
          ),
        ),
        title: Row(
          children: [
            Text(
              "Somthing",
              style: myStyle(12, aTextColor),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Project Task",
              style: myStyle(16, aTextColor, FontWeight.w700),
            ),
            Container(
              padding: EdgeInsets.only(left: 16),
              height: 65,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProjectTaskCard(
                      clr: Colors.purple,
                      number: '5',
                      title: "On Going",
                    ),
                    ProjectTaskCard(
                      clr: Colors.purple,
                      number: '5',
                      title: "On Going",
                    ),
                    ProjectTaskCard(
                      clr: Colors.purple,
                      number: '5',
                      title: "On Going",
                    ),
                    ProjectTaskCard(
                      clr: Colors.purple,
                      number: '5',
                      title: "On Going",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectTaskCard extends StatelessWidget {
  ProjectTaskCard({
    Key? key,
    this.clr,
    this.number,
    this.title,
  }) : super(key: key);

  Color? clr;
  String? number, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: secondaryColor),
      width: 130,
      height: 57,
      margin: EdgeInsets.only(right: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(16)),
            ),
            flex: 1,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$number",
                  style: myStyle(20, sadatColor),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "$title",
                  style: myStyle(16, sadatColor),
                ),
              ],
            ),
            flex: 25,
          ),
        ],
      ),
    );
  }
}
