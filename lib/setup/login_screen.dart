import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
                //Blue circle with L in middle
                decoration: BoxDecoration(
                  color: Colors.blue,
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
                    ),
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            Text(
              'أهلاً بك',
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'Calibri',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Form(
              child: Container(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        //Label Properties
                        labelText: "اسم المستخدم",
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontFamily: 'Calibri'),
                        //HintText Properties
                        hintText: "إسم المستخدم",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontFamily: 'Calibri'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        //Label Properties
                        labelText: "كلمة المرور",
                        labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontFamily: 'Calibri'),
                        //HintText Properties
                        hintText: "كلمة المرور",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontFamily: 'Calibri'),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    OutlineButton(
                      //  button for secondary actions
                      //  that are important but are not
                      //  the primary action in an app
                      onPressed: () {},
                      color: Colors.cyan[400],
                      child: Center(
                        child: Text(
                            //Login button text properties
                            'تسجيل دخول',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Calibri',
                            )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
