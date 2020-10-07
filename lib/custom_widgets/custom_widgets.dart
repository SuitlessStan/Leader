import 'package:flutter/material.dart';
import '../constans/constants.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key key,
    this.text,
    this.color,
    this.fontFamily,
    this.fontSize,
  }) : super(key: key);
  final String text;
  final Color color;
  final String fontFamily;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: fontFamily,
        fontSize: fontSize,
      ),
    );
  }
}

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({
    Key key,
    this.labelText,
    this.fontFamily,
    this.textFieldBorderColor,
    this.maxLines,
    this.minLines,
    this.fontSize,
    this.onSaved,
    this.validator,
    this.onChanged,
    this.controller,
    this.color,
  }) : super(key: key);
  final String labelText;
  final String fontFamily;
  final Color textFieldBorderColor;
  final int maxLines;
  final int minLines;
  final double fontSize;
  final Function onSaved;
  final Function validator;
  final Function onChanged;
  final TextEditingController controller;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: validator,
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: color,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: textFieldBorderColor,
            )),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: textFieldBorderColor,
            width: 1,
          ),
        ),
      ),
    );
  }
}
