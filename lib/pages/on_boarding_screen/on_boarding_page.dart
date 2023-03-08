import 'dart:math';

import 'package:class27/widget/common_button.dart';
import 'package:class27/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingPage extends StatefulWidget {
  @override
  State<OnbordingPage> createState() => _OnbordingPageState();
}

class _OnbordingPageState extends State<OnbordingPage> {
  int activeIndex = 0;
  List<String> texts = [
    "Update Progress Your Work for TheTeam",
    "Create a Task and Assign it to Your Team Members",
    "Get Notified when you Get a New Assignment",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      body: Stack(
        children: [
          Positioned(
              top: -160,
              child: Transform.rotate(
                angle: pi / 5,
                child: Container(
                  height: 400,
                  width: 480,
                  decoration: BoxDecoration(
                      color: Color(0xff8E8E93),
                      borderRadius: BorderRadius.circular(40)),
                ),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //**********************************
                CarouselSlider.builder(
                  itemCount: texts.length,
                  itemBuilder: (context, index, realIndex){
                    return Text("${texts[index]}", style: myStyle(36,textClrLight),);
                  },
                  options: CarouselOptions(
                    height: 200,
                    viewportFraction: 1,
                    //enableInfiniteScroll: false,
                    onPageChanged: (index,reason) =>
                        setState(() => activeIndex = index),
                  ),
                ),

                buildIndicator(),
                const SizedBox(height: 32,),

                // ***********************************
                CustomeButton(
                  onTap: () {},
                  title: "Sign Up",
                ),
                SizedBox(
                  height: 16,
                ),
                CustomeButton(
                  isOutline: true,
                  onTap: () {},
                  title: "Log In",
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 40),
                    height: 6,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: textClrLight),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }


  Widget buildIndicator () => AnimatedSmoothIndicator(
    activeIndex : activeIndex,
    count: texts.length,
    effect: ExpandingDotsEffect(
      activeDotColor: Color(0xff246BFD),
      dotColor: Color(0xff292B3E),
    )
  );

}


