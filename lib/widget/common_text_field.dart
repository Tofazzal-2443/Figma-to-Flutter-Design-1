import 'package:class27/widget/common_widget.dart';
import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
   CommonTextField({
    super.key,required this.hText ,required this.sicon,required this.textInputType,required this.textInputAction
  });

   String hText;
   Icon sicon;
   TextInputType textInputType;
   TextInputAction textInputAction;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: myStyle(16, textClrLight),
      cursorColor: textClrLight,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        hoverColor: textClrLight,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: textClrDark),
          borderRadius: BorderRadius.circular(28),
        ),
        // Set border for focused state
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: textClrLight),
          borderRadius: BorderRadius.circular(28),
        ),

        hintText: "$hText",
        hintStyle: myStyle(16, textClrDark),
        //suffix: Image.asset("assets/icon/email.png"),
        prefixIcon: sicon,
      ),
      keyboardType: textInputType,

    );
  }
}
