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
            //Leader top center text
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
          Container(
            height: 242,
            width: 378,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      //Send text Container
                      width: 180,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 2,
                          color: borderColor,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 10,
                            width: 10,
                          ),
                          Container(
                            //Send text image
                            height: 61,
                            width: 82,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/kite.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                            width: 24,
                          ),
                          Container(
                            // Send message text
                            height: 58,
                            width: 46,
                            child: Text(
                              'إرسال رسالة',
                              style: TextStyle(
                                color: borderColor,
                                fontFamily: 'Calibri',
                                fontSize: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      // Charge balance
                      width: 180,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 2,
                          color: borderColor,
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 24,
                            width: 18,
                          ),
                          Container(
                            height: 58,
                            width: 73,
                            child: Text(
                              'شحن الرصيد',
                              style: TextStyle(
                                color: borderColor,
                                fontFamily: 'Calibri',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Container(
                            height: 70,
                            width: 65,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/chargeBalance.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  children: [
                    Container(
                      width: 180,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 2,
                          color: borderColor,
                        ),
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 2,
                          color: borderColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
