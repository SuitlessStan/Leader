import 'package:flutter/material.dart';
import '../constans/constants.dart';
import '../custom_widgets/custom_widgets.dart';

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
          ContactNamesList(contacts: contacts),
          Container(
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
                  //Reciever textfield
                  DefaultTextFormField(
                    labelText: 'المستقبل',
                    fontFamily: 'Calibri',
                    textFieldBorderColor: Colors.grey,
                    fontSize: 16,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  DefaultTextFormField(
                    labelText: 'الرسالة النصية',
                    maxLines: null,
                    minLines: 2,
                    fontFamily: 'Calibri',
                    fontSize: 16,
                    textFieldBorderColor: Colors.grey,
                  )
                ],
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

class ContactNamesList extends StatelessWidget {
  const ContactNamesList({
    Key key,
    @required this.contacts,
    this.position,
    this.url,
  }) : super(key: key);

  final List contacts;
  final int position;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      //Contacts list
      //to be filled later
      child: Container(
        child: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return Container(
                //Outer container that contains contact picture and name
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
                        image: AssetImage(url),
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
                      contacts.elementAt(position),
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
      // color: Colors.grey,
    );
  }
}
