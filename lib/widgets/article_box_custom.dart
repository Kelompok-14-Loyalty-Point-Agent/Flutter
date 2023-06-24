import 'package:capstone_14/view_models/voucher_view_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constant/textstyle_constant.dart';
import '../model/reward/voucher_models.dart';

class ArticleBox extends StatelessWidget {
  VoucherModels? voucherModels;

  @override
  Widget build(BuildContext context) {
    return Consumer<VoucherViewModel>(
      builder: (context, value, child) => Container(
        margin: EdgeInsets.only(left: 13, right: 13),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ]),
        child: Column(
          children: [
            Image.asset(
              'assets/images/photobox.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Text(
                          'Voucher 10.000',
                          style: TextStyleConst.description4WithColor(
                              Colors.black),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Rp. 10.000',
                          style: TextStyleConst.heading5WithColor(Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: ListTile(
                    leading: Image.asset(
                      'assets/icons/coin.png',
                      width: 20,
                      height: 20,
                    ),
                    title: Text(
                      '300',
                      style: TextStyleConst.heading5WithColor(
                        const Color(0xffFFC107),
                      ),
                    ),
                  ),
                ),
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.fromLTRB(170, 7, 0, 0),
                //     child: Image.asset(
                //       'assets/icons/coin.png',
                //       width: 20,
                //       height: 20,
                //     ),
                //   ),
                // ),
                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.fromLTRB(5, 7, 15, 0),
                //     child: Text(
                //       '300',
                //       style: TextStyleConst.heading5WithColor(
                //         const Color(0xffFFC107),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
