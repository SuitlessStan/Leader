import 'package:flutter/material.dart';
import '../../constans/constants.dart';

class ColumnContact extends StatelessWidget {
  final String phoneNumber;
  final String contactName;
  final String contactProfilePicture;

  const ColumnContact(
      {Key key, this.phoneNumber, this.contactName, this.contactProfilePicture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(contactProfilePicture),
            backgroundColor: Colors.white,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            right: 15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                contactName,
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 24,
                  color: contactsName,
                ),
              ),
              Text(
                phoneNumber,
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 16,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 120,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/x_sign.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Text(
                'X',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ColumnContactNamesList extends StatelessWidget {
  final List<ColumnContact> contact = [
    ColumnContact(
      contactName: 'آية محمد',
      contactProfilePicture: 'assets/images/Aya_Mohammad.png',
      phoneNumber: '0599947045',
    ),
    ColumnContact(
      contactName: 'آية محمد',
      contactProfilePicture: 'assets/images/Aya_Mohammad.png',
      phoneNumber: '0599947045',
    ),
    ColumnContact(
      contactName: 'آية محمد',
      contactProfilePicture: 'assets/images/Aya_Mohammad.png',
      phoneNumber: '0599947045',
    ),
    ColumnContact(
      contactName: 'آية محمد',
      contactProfilePicture: 'assets/images/Aya_Mohammad.png',
      phoneNumber: '0599947045',
    ),
    ColumnContact(
      contactName: 'آية محمد',
      contactProfilePicture: 'assets/images/Aya_Mohammad.png',
      phoneNumber: '0599947045',
    ),
    ColumnContact(
      contactName: 'آية محمد',
      contactProfilePicture: 'assets/images/Aya_Mohammad.png',
      phoneNumber: '0599947045',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 89,
      width: 477,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: contact.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return ColumnContact(
            contactName: contact.elementAt(index).contactName,
            contactProfilePicture:
                contact.elementAt(index).contactProfilePicture,
            phoneNumber: contact.elementAt(index).phoneNumber,
          );
        },
      ),
    );
  }
}
