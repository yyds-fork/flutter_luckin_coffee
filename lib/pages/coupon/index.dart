import 'package:flutter/material.dart';
import 'package:flutter_luckin_coffee/components/a_button/index.dart';
import 'package:flutter_luckin_coffee/pages/coupon/widgets/coupon_row.dart';
import 'package:flutter_luckin_coffee/utils/global.dart';
import 'package:get/get.dart';

class Coupon extends StatefulWidget {
  Coupon({Key? key}) : super(key: key);

  _CouponState createState() => _CouponState();
}

class _CouponState extends State<Coupon> {
  double bottom = Get.bottomBarHeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
        title: '可使用优惠券',
        context: context,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: ListView(
              padding: EdgeInsets.only(bottom: 80 + bottom),
              children: <Widget>[
                CouponRow(),
                CouponRow(),
                CouponRow(),
                CouponRow(),
                CouponRow(),
                CouponRow(),
                CouponRow(),
                CouponRow(),
                CouponRow(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: bottom, top: bottom / 2),
              width: Get.width,
              child: AButton.normal(
                  width: 300,
                  child: Text('保存'),
                  color: Colors.white,
                  bgColor: Color.fromRGBO(144, 192, 239, 1),
                  onPressed: () => {}),
            ),
          )
        ],
      ),
    );
  }
}
