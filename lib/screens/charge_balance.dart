import 'package:Leader/custom_widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import '../constans/constants.dart';
import 'send_texts.dart';

class ChargeBalance extends StatefulWidget {
  @override
  _ChargeBalanceState createState() => _ChargeBalanceState();
}

class _ChargeBalanceState extends State<ChargeBalance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'شحن رصيد',
          style: TextStyle(
            color: leaderLogo,
            fontSize: 24,
            fontFamily: 'Calibri',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContactsNamesList(),
            SizedBox(
              height: 56,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 18,
                left: 18,
                bottom: 159.5,
                top: 56,
              ),
              child: Form(
                child: Column(
                  children: [
                    PhoneNumberTextField(),
                    Container(
                      width: 378,
                      height: 241,
                      child: Column(
                        children: [
                          BalanceTextField(),
                          BottomText(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SendButton(),
          ],
        ),
      ),
    );
  }
}

// class ContactNamesList extends StatelessWidget {
//   const ContactNamesList({
//     Key key,
//     this.contactNames,
//     this.contactProfilePictures,
//   }) : super(key: key);
//   final List<String> contactNames;
//   final List<String> contactProfilePictures;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       //Contact names list
//       height: 50,
//       width: 477,
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: ListView.builder(
//           shrinkWrap: true,
//           itemExtent: 30,
//           itemCount: contactNames.length,
//           itemBuilder: (context, index) {
//             return Container(
//               height: 40,
//               width: 40,
//               child: Container(
//                 child: Column(
//                   children: [
//                     Container(
//                       height: 30,
//                       width: 30,
//                       child:
//                           Image.asset(contactProfilePictures.elementAt(index)),
//                     ),
//                     Container(
//                       height: 10,
//                       width: 50,
//                       child: Text(contactNames.elementAt(index)),
//                     )
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

class BottomText extends StatelessWidget {
  const BottomText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: thinLine,
        ),
        shape: BoxShape.circle,
      ),
      width: 370,
      height: 40,
      child: Center(
        child: Row(
          children: [
            Text(
              ': الرصيد المتبقي',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 14,
                color: phoneNummberColor,
              ),
            ),
            Text(
              ' 323 ',
              style: TextStyle(
                fontSize: 14,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BalanceTextField extends StatelessWidget {
  const BalanceTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.ltr,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
        hintText: '0',
        hintStyle: TextStyle(
          fontFamily: 'Bookman Old Style',
          fontSize: 84,
          color: phoneNummberColor,
        ),
      ),
    );
  }
}

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      textDirection: TextDirection.ltr,
      decoration: InputDecoration(
        hintText: '059 - xxx- xxx- xxx',
        hintStyle: TextStyle(
          fontFamily: 'Calibri',
          fontSize: 28,
          color: Colors.grey,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  final String contactName;
  final String contactProfilePicture;

  Contact({Key key, this.contactName, this.contactProfilePicture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(contactProfilePicture),
          backgroundColor: Colors.white,
        ),
        Center(child: Text(contactName)),
      ],
    );
  }
}

class ContactsNamesList extends StatelessWidget {
  final List<Contact> contact = [
    Contact(
      contactName: 'آية محمد',
      contactProfilePicture: 'assets/images/Aya_Mohammad.png',
    ),
    Contact(
      contactName: 'محمد عودة',
      contactProfilePicture: 'assets/images/Mohammad_Ouda.png',
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
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Contact(
            contactName: contact.elementAt(index).contactName,
            contactProfilePicture:
                contact.elementAt(index).contactProfilePicture,
          );
        },
      ),
    );
  }
}
