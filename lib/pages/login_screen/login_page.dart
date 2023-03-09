import 'package:class27/widget/common_button.dart';
import 'package:class27/widget/common_text_field.dart';
import 'package:class27/widget/common_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              Text(
                "Your Password",
                style: myStyle(16, textClrDark),
              ),
              SizedBox(
                height: 12,
              ),
              CommonTextField(
                sicon: Icon(
                  Icons.vpn_key_outlined,
                  color: textClrDark,
                ),
                hText: "Enter Your Password",
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(
                height: 16,
              ),
              CustomeButton(
                title: "Login",
                onTap: () {},
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forgot Your Password",
                    style: myStyle(16, textClrLight, FontWeight.w400),
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
