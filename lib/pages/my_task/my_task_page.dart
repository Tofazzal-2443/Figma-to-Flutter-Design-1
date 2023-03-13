import 'package:class27/widget/common_widget.dart';
import 'package:flutter/material.dart';

class MytaskPage extends StatefulWidget {
  const MytaskPage({Key? key}) : super(key: key);

  @override
  State<MytaskPage> createState() => _MytaskPageState();
}

class _MytaskPageState extends State<MytaskPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundClr,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12, top: 4, bottom: 4),
            child: CircleAvatar(
              maxRadius: 15,
              backgroundColor: Colors.grey,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Parto Team",
                    style: myStyle(16, textClrLight),
                  ),
                  Icon(Icons.keyboard_arrow_down_sharp)
                ],
              ),
              Icon(Icons.search),
            ],
          ),
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 16, right: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Project Task",
                style: myStyle(
                  16,
                  textClrLight,
                  FontWeight.w700,
                ),
              ),
              Container(
                //color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 16),
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    taskCard(
                      clr: Colors.purple,
                      value: "5",
                      title: "Ongoing",
                    ),
                    taskCard(
                      clr: Colors.red,
                      value: "7",
                      title: "Under\nReview",
                    ),
                    taskCard(
                      clr: Colors.teal,
                      value: "7",
                      title: "Uncommon",
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Task",
                    style: myStyle(
                      16,
                      textClrLight,
                      FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See More",
                      style: myStyle(
                        16,
                        textClrDark,
                        FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                itemCount:,
                itemBuilder:,),
            ],
          ),
        ),
      ),
    );
  }

  Container taskCard({String? value, String? title, Color? clr}) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: cardClr),
      height: 60,
      width: 130,
      child: Row(
        children: [
          Container(
            width: 4,
            height: 32,
            color: clr,
          ),
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$value",
                    style: myStyle(16, textClrLight),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "$title",
                    style: myStyle(16, textClrLight),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
