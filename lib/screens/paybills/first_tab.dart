import 'package:flutter/material.dart';
import '../../constans/constants.dart';

class BillDetails extends StatelessWidget {
  final String billName;
  final String billImage;
  final String billDate;

  const BillDetails({Key key, this.billName, this.billImage, this.billDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(billImage),
            fit: BoxFit.fill,
          )),
        ),
        title: Text(
          billName,
          style: TextStyle(
            fontFamily: 'Calibri',
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          billDate,
          style: TextStyle(
            fontFamily: 'Calibri',
            fontSize: 12,
            color: Colors.black,
          ),
        ),
        trailing: PayButton(),
      ),
    );
  }
}

class PayBillsList extends StatelessWidget {
  final List<BillDetails> billsList = [
    BillDetails(
      billName: 'فاتورة كهرباء',
      billImage: 'assets/images/electricity.png',
      billDate: '30 / 4 / 2020',
    ),
    BillDetails(
      billName: 'فاتورة مياه',
      billImage: 'assets/images/water.png',
      billDate: '30 / 4 / 2020',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 378,
      height: 93,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
        shape: BoxShape.circle,
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return BillDetails(
            billName: billsList.elementAt(index).billName,
            billImage: billsList.elementAt(index).billImage,
            billDate: billsList.elementAt(index).billDate,
          );
        },
        shrinkWrap: true,
        itemCount: billsList.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

class PayButton extends StatelessWidget {
  const PayButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 80,
      height: 40,
      child: RaisedButton(
        onPressed: () {},
        color: raisedButtonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
              //Login button text properties
              'دفع',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Calibri',
              )),
        ),
      ),
    );
  }
}
