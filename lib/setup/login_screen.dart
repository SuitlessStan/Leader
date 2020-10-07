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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 14,
            top: 116,
            bottom: 115,
          ),
          child: Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                  height: 132,
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
                      height: 84,
                    ),
                    ButtonTheme(
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
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
