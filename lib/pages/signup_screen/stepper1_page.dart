import 'package:class27/widget/common_text_field.dart';
import 'package:class27/widget/common_widget.dart';
import 'package:flutter/material.dart';

import '../../widget/common_button.dart';


class Stepper1Page extends StatefulWidget {
  const Stepper1Page({Key? key}) : super(key: key);

  @override
  State<Stepper1Page> createState() => _Stepper1PageState();
}

class _Stepper1PageState extends State<Stepper1Page> {


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
                            Image.asset("assets/images/Slider.png"),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text("Complete Your Profiles", style: myStyle(16, textClrLight, FontWeight.w700),),
              SizedBox(height: 16,),
              Container(
                height: 88,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100) ,
                  color: Colors.grey,
                ),
                child: Icon(Icons.camera_alt_outlined, color: textClrLight,),
              ),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Your Full Name",
                    style: myStyle(16, textClrDark),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              CommonTextField(
                sicon: Icon(
                  Icons.person_3_outlined,
                  color: textClrDark,
                ),
                hText: "Enter your full name",
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Your Password",
                    style: myStyle(16, textClrDark),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              CommonTextField(
                sicon: Icon(
                  Icons.key,
                  color: textClrDark,
                ),
                hText: "Enter your password",
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(
                height: 16,
              ),
              CustomeButton(
                title: "Continue",
                onTap: () {},
              ),

            ],
          ),
        ),
      ),
    );
  }

}
