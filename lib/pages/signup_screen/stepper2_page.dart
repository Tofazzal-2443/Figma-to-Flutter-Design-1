import 'package:class27/widget/common_button.dart';
import 'package:class27/widget/common_widget.dart';
import 'package:flutter/material.dart';

class Stepper2Page extends StatefulWidget {
  const Stepper2Page({Key? key}) : super(key: key);

  @override
  State<Stepper2Page> createState() => _Stepper2PageState();
}

class _Stepper2PageState extends State<Stepper2Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundClr,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset("assets/icon/acleftback.png"),
                    ),
                    Expanded(
                      flex: 10,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/Sliderr.png"),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CustomeButton(
                title: "Create Your Own Team",
                onTap: () {},
              ),

              SizedBox(
                height: 24,
              ),
              
              Text("Or", style: myStyle(24,textClrLight,FontWeight.w700),),

              SizedBox(
                height: 24,
              ),
              CustomeButton(
                title: "Join Team",
                onTap: () {},
                isOutline: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
