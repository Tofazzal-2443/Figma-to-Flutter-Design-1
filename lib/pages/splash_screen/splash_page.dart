import 'package:class27/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 96,
                width: 96,
                padding: EdgeInsets.all(33),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: cardClr,
                ),
                child: SvgPicture.asset(
                  "assets/icon/Layout.svg",
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "RANCANG",
                style: myStyle(
                  36,
                  textClrLight,
                  FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Your Personal Task Manager",
                style: myStyle(
                  17,
                  textClrDark,
                  FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 264,
              ),
              buildMaterialButton(context),
            ],
          ),
        ),
      ),
    );
  }

  MaterialButton buildMaterialButton(BuildContext context) {
    return MaterialButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Getting Started",
                    style: myStyle(
                      17,
                      textClrLight,
                      FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: textClrLight,
                    weight: 8.43,
                  ),
                ],
              ),
              color: buttonClr,
              height: 56,
              minWidth: MediaQuery.of(context).size.width,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28)),
            );
  }
}
