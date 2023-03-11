import 'package:class27/widget/common_button.dart';
import 'package:class27/widget/common_text_field.dart';
import 'package:class27/widget/common_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundClr,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/icon/Vector.png"),
                    Text(
                      "Sign Up",
                      style: myStyle(16, textClrLight, FontWeight.w700),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Your Email Address",
                style: myStyle(16, textClrDark),
              ),
              SizedBox(
                height: 12,
              ),
              CommonTextField(
                sicon: Icon(
                  Icons.email_outlined,
                  color: textClrDark,
                ),
                hText: "Enter your email address",
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,
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
