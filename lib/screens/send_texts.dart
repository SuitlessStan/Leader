import 'package:flutter/material.dart';
import '../constans/constants.dart';

class SendText extends StatefulWidget {
  @override
  _SendTextState createState() => _SendTextState();
}

class _SendTextState extends State<SendText> {
  List contacts = [];
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
          Container(
            //Contacts list
            //to be filled later
            child: Container(
              child: ListView.builder(
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 50,
                      height: 80,
                      child: Column(children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              //This is where you place the contact image
                              image: AssetImage(contacts.elementAt(index)),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 14,
                          width: 40,
                          child: Text(
                            //This is where you place the contact name
                            contacts.elementAt(index),
                            style: TextStyle(
                              fontFamily: 'Calibri',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ]),
                    );
                  }),
            ),
            height: 89,
            width: 477,
            color: Colors.grey,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              // color: Colors.blue,
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
                    DefaultTextFormField(),
                    SizedBox(
                      height: 24,
                    ),
                    DefaultTextFormField()
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
                      fontSize: 24,
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

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField({
    Key key,
    this.labelText,
    this.fontFamily,
    this.textFieldBorderColor,
    this.maxLines,
    this.minLines,
  }) : super(key: key);
  final String labelText;
  final String fontFamily;
  final Color textFieldBorderColor;
  final int maxLines;
  final int minLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontFamily: fontFamily,
          fontSize: 16,
          color: textFields,
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
