import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailNotifScreen extends StatefulWidget {
  const DetailNotifScreen({super.key});

  @override
  State<DetailNotifScreen> createState() => _DetailNotifScreenState();
}

class _DetailNotifScreenState extends State<DetailNotifScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff030F51),
        // shadowColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                "Detail Notification",
                style: GoogleFonts.expletusSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(0xff030F51),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 296,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 14, left: 11, right: 11),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Redeem for Benefit",
                                  style: GoogleFonts.ptSans(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "tPoin Voucher",
                                  style: GoogleFonts.ptSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            "assets/icons/coin.png",
                            width: 17,
                            height: 17,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "5000",
                            style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: const Color(0xffB26801),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xffBDBDBD),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exchangeable up to",
                            style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "December 31th, 2023",
                            style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 296,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 11, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Yeay, You Got tPoint Voucher!",
                        style: GoogleFonts.expletusSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: const Color(0xff030F51),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Congratulations! You managed to get a cash out voucher of Rp. 50,000 which can be redeemed to your E-wallet!",
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Get other vouchers by exchanging your tpoints and keep making transactions to collect your tpoins!",
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Terms and Conditions",
                              style: GoogleFonts.ptSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: const Color(0xff008284)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 296,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "How to Use",
                        style: GoogleFonts.expletusSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: const Color(0xff030F51),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "1. See and read and understand the terms and conditions",
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "2. Click redeem to benefit",
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "3. Select the e-wallet that will be the result of the redeem",
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "4. Enter the required data",
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "5. Wait for the redeem process until a successful notification appears",
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              ButtonCustome(
                onPressed: () {},
                title: "Reedem for Benefit",
                backgroundColour: const Color(0xff030F51),
                width: 296,
                style: GoogleFonts.ptSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
