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
        backgroundColor: Colors.white,
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
          bottom: TabBar(
            controller: _controller,
            tabs: [
              Tab(
                child: Text(
                  'فواتير مستحقة',
                  style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'فواتير مدفوعة',
                  style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            PayBillsList(),
            SecondTab(),
          ],
        ));
  }
}
