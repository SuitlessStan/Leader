import 'package:flutter/material.dart';
import '../constans/constants.dart';

class SendText extends StatefulWidget {
  @override
  _SendTextState createState() => _SendTextState();
}

class _SendTextState extends State<SendText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 42,
          ),
          Container(
            //Send text top text
            height: 97,
            width: 414,
            child: Center(
              child: Text(
                'إرسال رسالة',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 24,
                  color: leaderLogo,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              //Contacts list
              //to be filled later
              child: ListView.builder(),
              height: 89,
              width: 477,
              color: Colors.grey,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              //Two textfields container
              height: 371,
              width: 378,
              padding: EdgeInsets.only(
                right: 18,
                left: 18,
                top: 16,
                bottom: 15,
              ),
              child: Form(
                child: Column(
                  children: [
                    Container(
                      //Reciever textfield container
                      height: 60,
                      width: 378,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'المستقبل',
                          labelStyle: TextStyle(
                            fontFamily: 'Calibri',
                            fontSize: 16,
                            color: textFields,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      //Enter text (big textfield) container
                      height: 287,
                      width: 378,

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'الرسالة النصية',
                          labelStyle: TextStyle(
                            fontFamily: 'Calibri',
                            fontSize: 16,
                            color: textFields,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // SizedBox(height: 15,)
          Container(
            width: 378,
            height: 60,
            margin: EdgeInsets.only(
              right: 18,
              left: 18,
            ),
            child: ButtonTheme(
              //Send message button
              minWidth: 378,
              height: 60,
              child: RaisedButton(
                onPressed: () {},
                color: raisedButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    'إرسال',
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
