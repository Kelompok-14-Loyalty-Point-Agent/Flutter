import 'package:capstone_14/view/bills/bills_screen.dart';
import 'package:capstone_14/view/credit_data_transaction/credit_data_screen.dart';
import 'package:capstone_14/view/ewallet/ewallet_screen.dart';
import 'package:capstone_14/view/get_reward/get_reward_screen.dart';
import 'package:capstone_14/view/voucher/voucher_screen.dart';
import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/textstyle_constant.dart';
import '../../widgets/top_bar_page.dart';
import '../get_reward/detail_reward_screen.dart';
import '../notification/notification_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> _images(BuildContext context) {
    return [
      SizedBox(
        height: 180,
        width: 250,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/phone.png'),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Stay Charge, Stay Connected: Phone Balance Voucher for Uninterrupted Communication!",
                style: TextStyleConst.heading4,
              ),
              const SizedBox(
                height: 9,
              ),
              Text(
                "Let's get your transaction with the benefical voucher. Hurry up! Don't run out.",
                style: TextStyleConst.description3WithColor(
                  const Color(0xff1D1D1D),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  DetailRewardScreen(),
                    ),
                  );
                },
                child: const Text(
                  "See Details",
                  style: TextStyle(
                    color: Color(
                      0xff008284,
                    ),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 180,
        width: 250,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/internet-data.png'),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Special Combo Internet Data Package Get Your Suprise Deal Now!",
                style: TextStyleConst.heading4,
              ),
              const SizedBox(
                height: 9,
              ),
              Text(
                "Let's get your transaction with the benefical voucher. Hurry up! Don't run out.",
                style: TextStyleConst.description3WithColor(
                  const Color(0xff1D1D1D),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailRewardScreen(),
                    ),
                  );
                },
                child: Text(
                  "See Details",
                  style: GoogleFonts.ptSans(
                    color: const Color(
                      0xff008284,
                    ),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 48),
          child: Column(
            children: [
              TopBarPage(
                useContainer: false,
                icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.notifications),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Container(
                      width: 337,
                      height: 134,
                      decoration: BoxDecoration(
                        color: const Color(0xff030F51),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 31, right: 30, top: 25),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CreditDataScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 54,
                                    height: 54,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 5,
                                          spreadRadius: 5,
                                        ),
                                      ],
                                    ),
                                    child: Image.asset(
                                      "assets/icons/simcard.png",
                                      scale: 4,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Credit/Data",
                                  style: GoogleFonts.ptSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xffECECEC)),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const BillsScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 54,
                                    height: 54,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 5,
                                          spreadRadius: 5,
                                        ),
                                      ],
                                    ),
                                    child: Image.asset(
                                      "assets/icons/bill.png",
                                      scale: 4,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Bill",
                                  style: GoogleFonts.ptSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xffECECEC)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const VoucherScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 54,
                                    height: 54,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 5,
                                          spreadRadius: 5,
                                        ),
                                      ],
                                    ),
                                    child: Image.asset(
                                      "assets/icons/voucher.png",
                                      scale: 4,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "Voucher",
                                  style: GoogleFonts.ptSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xffECECEC)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const EwalletScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 54,
                                    height: 54,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 5,
                                          spreadRadius: 5,
                                        ),
                                      ],
                                    ),
                                    child: Image.asset(
                                      "assets/icons/e-wallet.png",
                                      scale: 4,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "E-Wallet",
                                  style: GoogleFonts.ptSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xffECECEC)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    ButtonCustome(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GetRewardScreen(),
                          ),
                        );
                      },
                      title: "Get Reward",
                      backgroundColour: const Color(0xff931136),
                      width: 210,
                      style: GoogleFonts.ptSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 336,
                      height: 380,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 15, // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 23, bottom: 10),
                            child: Text(
                              "What's New",
                              style: GoogleFonts.expletusSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF030F51),
                              ),
                            ),
                          ),
                          CarouselSlider(
                            items: _images(context),
                            carouselController: _controller,
                            options: CarouselOptions(
                                enlargeFactor: double.infinity,
                                enlargeStrategy:
                                    CenterPageEnlargeStrategy.scale,
                                aspectRatio: double.infinity,
                                height: 300,
                                autoPlay: true,
                                enlargeCenterPage: true,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                }),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: _images(context).asMap().entries.map(
                              (entry) {
                                return GestureDetector(
                                  onTap: () =>
                                      _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: 7,
                                    height: 7,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 4.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: (Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? const Color(0xffD9D9D9)
                                                : const Color(0xff008284))
                                            .withOpacity(_current == entry.key
                                                ? 0.9
                                                : 0.4)),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
