import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constans/constants.dart';
import 'package:flutter/services.dart';
import '../screens/home.dart';
import '../custom_widgets/custom_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode _focusNode;
  final TextFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 14,
            top: 116,
            bottom: 115,
          ),
          child: Column(
            children: [
              Container(
                  //Blue circle with L in center
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    color: logoColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    //Center L text
                    child: Text(
                      "L",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 64,
                        fontFamily: 'Castellar',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )),
              SizedBox(
                height: 38,
              ),
              Text(
                'أهلاً بك',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.grey[500],
                  fontFamily: 'Calibri',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Form(
                child: Column(children: [
                  DefaultTextFormField(
                    labelText: 'إسم المستخدم',
                    fontFamily: 'Calibri',
                    fontSize: 24,
                    textFieldBorderColor: Colors.grey,
                    color: textColor,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  DefaultTextFormField(
                    labelText: 'كلمة المرور',
                    fontFamily: 'Calibri',
                    fontSize: 24,
                    textFieldBorderColor: Colors.grey,
                    color: textColor,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  CustomRaisedButton(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRaisedButton extends StatelessWidget {
  const CustomRaisedButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 380,
      height: 63,
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        color: raisedButtonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
              //Login button text properties
              'تسجيل دخول',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Calibri',
                fontWeight: FontWeight.w400,
              )),
        ),
      ),
    );
  }
}

class LoginTextFormField extends StatelessWidget {
  const LoginTextFormField({
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
    this.obscureText,
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
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
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
