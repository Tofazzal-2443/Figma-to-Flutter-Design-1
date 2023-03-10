import 'package:flutter/material.dart';

import '../../widget/common_button.dart';
import '../../widget/common_text_field.dart';
import '../../widget/common_widget.dart';

class Stepper5Page extends StatelessWidget {
  const Stepper5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundClr,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                                Image.asset("assets/images/Slider5.png"),
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
                  Text(
                    "Invite Your Team Member",
                    style: myStyle(16, textClrLight, FontWeight.w700),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Email Member",
                        style: myStyle(16, textClrDark),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CommonTextField(
                    sicon: Icon(
                      Icons.email_outlined,
                      color: textClrDark,
                    ),
                    hText: "Type an email addrress",
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                  ),
                ],
              ),
              Column(
                children: [
                  CustomeButton(
                    title: "Continue",
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
