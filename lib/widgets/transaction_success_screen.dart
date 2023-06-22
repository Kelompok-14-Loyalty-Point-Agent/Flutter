import 'package:capstone_14/constant/textstyle_constant.dart';
import 'package:capstone_14/view/bottom_navbar_page/bottom_navbar.dart';
import 'package:capstone_14/view/get_reward/get_reward_screen.dart';
import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class TransactionSuccesScreen extends StatelessWidget {
  final String method;
  final int price;
  final String product;
  final double point;
  const TransactionSuccesScreen({
    Key? key,
    required this.method,
    required this.price,
    required this.product,
    required this.point,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now().toLocal();
    String formattedDate = DateFormat("dd/MM/yyyy | HH:mm:ss").format(now);

    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
        color: Colors.white,
        width: 360,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 96),
              Image.asset(
                "assets/icons/check_icon.png",
                width: 58,
                height: 58,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13, bottom: 30),
                child: Text(
                  "Transaction Success",
                  style: TextStyleConst.heading4,
                ),
              ),
              Container(
                width: 234,
                height: 381,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.25),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(2, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 27, bottom: 5),
                      child: Text(
                        "Date",
                        style: TextStyleConst.heading5WithColor(
                          const Color(0xff1d1d1d),
                        ),
                      ),
                    ),
                    Text(
                      formattedDate,
                      style: TextStyleConst.description4WithColor(
                        const Color(0xff1d1d1d),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 5),
                      child: Text(
                        "Product",
                        style: TextStyleConst.heading5WithColor(
                          const Color(0xff1d1d1d),
                        ),
                      ),
                    ),
                    Text(
                      product,
                      style: TextStyleConst.description4WithColor(
                        const Color(0xff1d1d1d),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 5),
                      child: Text(
                        "Payment Method",
                        style: TextStyleConst.heading5WithColor(
                          const Color(0xff1d1d1d),
                        ),
                      ),
                    ),
                    Text(
                      method,
                      style: TextStyleConst.description4WithColor(
                        const Color(0xff1d1d1d),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 5),
                      child: Text(
                        "Total",
                        style: TextStyleConst.heading5WithColor(
                          const Color(0xff1d1d1d),
                        ),
                      ),
                    ),
                    Text(
                      " Rp. $price,00",
                      style: TextStyleConst.description4WithColor(
                        const Color(0xff1d1d1d),
                      ),
                    ),
                    const SizedBox(height: 44),
                    Image.asset(
                      "assets/icons/medal_icon.png",
                      width: 23,
                      height: 23,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3, bottom: 3),
                      child: Text(
                        "Congratulation!",
                        style: TextStyleConst.heading4,
                      ),
                    ),
                    Text(
                      point.toString(),
                      style: TextStyleConst.description3WithColor(
                        const Color(0xffB26801),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 34, bottom: 10),
                child: ButtonCustome(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GetRewardScreen(),
                      ),
                    );
                  },
                  title: "Detail Point",
                  backgroundColour: const Color(0xff347C17),
                  width: 234,
                  style: TextStyleConst.description3WithColor(Colors.white),
                ),
              ),
              ButtonCustome(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const BottomNavBar(currentIndex: 0),
                      ),
                      (route) => false);
                },
                title: "Done",
                backgroundColour: const Color(0xff030F51),
                width: 234,
                style: TextStyleConst.description3WithColor(Colors.white),
              ),
              const SizedBox(
                height: 96,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
