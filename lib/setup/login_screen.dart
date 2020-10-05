import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constans/constants.dart';
import 'package:flutter/services.dart';

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
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            //Label Properties
                            labelText: "اسم المستخدم",
                            labelStyle: TextStyle(
                              color: borderTextfieldColor,
                              fontSize: 24,
                              fontFamily: 'Calibri',
                              fontWeight: FontWeight.w400,
                            ),
                            // HintText Properties
                            // hintText: "إسم المستخدم",
                            // hintStyle: TextStyle(
                            //   color: Colors.grey,
                            //   fontSize: 24,
                            //   fontFamily: 'Calibri',
                            //   fontWeight: FontWeight.w400,
                            // ),
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(42),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: borderTextfieldColor,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          // Label Properties
                          labelText: "كلمة المرور",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontFamily: 'Calibri',
                            fontWeight: FontWeight.w400,
                          ),
                          // //HintText Properties
                          // hintText: "كلمة المرور",
                          // hintStyle: TextStyle(
                          //   color: Colors.grey,
                          //   fontSize: 24,
                          //   fontFamily: 'Calibri',
                          //   fontWeight: FontWeight.w400,
                          // ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(42),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 84,
                    ),
                    ButtonTheme(
                      minWidth: 380,
                      height: 63,
                      child: RaisedButton(
                        onPressed: () {},
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
