import 'package:flutter/material.dart';
import '../constans/constants.dart';
import 'send_texts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Text(
      //   'ليدر',
      //   style: TextStyle(
      //     color: Colors.grey,
      //     fontFamily: 'Calibri',
      //     fontSize: 24,
      //   ),
      // )),
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
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SendText(),
                        ),
                      ),
                      child: Container(
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
                              // Send message text container
                              height: 58,
                              width: 46,
                              child: CustomText(),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Container(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: Container(
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
                                  color: leaderLogo,
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Container(),
                        ),
                      ),
                      child: Container(
                        //pay bills Container
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
                              //pay bills image
                              height: 72,
                              width: 72,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/payBills.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            SizedBox(
                              height: 24,
                              width: 16,
                            ),
                            Container(
                              // pay bills text container
                              height: 58,
                              width: 64,
                              child: Text(
                                'تسديد فواتير',
                                style: TextStyle(
                                  color: leaderLogo,
                                  fontFamily: 'Calibri',
                                  fontSize: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Container(),
                        ),
                      ),
                      child: Container(
                        //Balance requests
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
                              // Send message text
                              height: 58,
                              width: 73,
                              child: Text(
                                'طلبات الرصيد',
                                style: TextStyle(
                                  color: leaderLogo,
                                  fontFamily: 'Calibri',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                              width: 11,
                            ),
                            Container(
                              //Send text image
                              height: 71,
                              width: 68,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/balanceRequests.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ],
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

class CustomText extends StatelessWidget {
  const CustomText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'إرسال رسالة',
      style: TextStyle(
        color: leaderLogo,
        fontFamily: 'Calibri',
        fontSize: 20,
      ),
    );
  }
}
