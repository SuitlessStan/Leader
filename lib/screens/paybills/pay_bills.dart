import 'package:flutter/material.dart';
import '../../constans/constants.dart';
import 'first_tab.dart';
import 'second_tab.dart';

class PayBills extends StatefulWidget {
  @override
  _PayBillsState createState() => _PayBillsState();
}

class _PayBillsState extends State<PayBills>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'تسديد فاتورة',
          style: TextStyle(
            color: leaderLogo,
            fontSize: 24,
            fontFamily: 'Calibri',
          ),
        ),
      ),
      body: Container(
        child: Column(children: [
          Container(
            height: 93,
            width: 378,
            child: Align(
              alignment: Alignment.topCenter,
              child: TabBar(
                controller: _controller,
                tabs: [
                  Tab(
                    child: Center(
                      child: Text(
                        'فواتير مستحقة',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: Text(
                        'فواتير مدفوعة',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          TabBarView(
            controller: _controller,
            children: [
              PayBillsList(),
              SecondTab(),
            ],
          ),
        ]),
      ),
    );
  }
}
