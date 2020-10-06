import 'package:flutter/material.dart';
import '../constans/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 42,
          ),
          Container(
            height: 97,
            width: 414,
            child: Center(
              child: Text(
                "ليدر",
                style: TextStyle(
                  color: leaderLogo,
                  fontFamily: 'Calibri',
                  fontSize: 24,
                ),
              ),
            ),
          ),
          SizedBox(height: 14),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      //Send a message
                      Container(
                        height: 110,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            Image.asset('assets/images/kite.png'),
                            SizedBox(
                              height: 24,
                              width: 24,
                            ),
                            Container(
                              height: 58,
                              width: 46,
                              child: Text(
                                'إرسال رسالة',
                                style: TextStyle(
                                  fontFamily: 'Calibri',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        // charge balance
                        height: 110,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.grey,
                            )),
                      )
                    ],
                  )
                ],
              ),
              color: Colors.white,
              height: 242,
              width: 378,
              margin: EdgeInsets.only(
                right: 18,
                left: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
