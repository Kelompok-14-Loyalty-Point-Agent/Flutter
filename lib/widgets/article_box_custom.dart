import 'package:capstone_14/constant/textstyle_constant.dart';
import 'package:capstone_14/view/get_reward/detail_reward_screen.dart';
import 'package:capstone_14/view_models/voucher_view_models.dart';
import 'package:flutter/material.dart';

class RedeemContentWidget extends StatelessWidget {
  const RedeemContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: VoucherViewModel.vouchers?.data.length ?? 0,
      itemBuilder: (context, index) {
        final voucher = VoucherViewModel.vouchers?.data[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailRewardScreen(
                  voucherId: voucher?.id,
                  product: voucher?.product,
                  cost: voucher?.cost,
                  benefit: voucher?.benefit,
                ),
              ),
            );
            print(voucher?.cost);
          },
          child: Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            child: SizedBox(
              height: 210,
              child: Column(
                children: [
                  Image.asset('assets/images/photobox.png'),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 15, 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              voucher?.product ?? '',
                              style: TextStyleConst.description4,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              voucher?.benefit ?? '',
                              style: TextStyleConst.heading5WithColor(
                                  Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/coin.png',
                              scale: 4,
                            ),
                            const SizedBox(width: 9),
                            Text(
                              voucher?.cost.toString() ?? '',
                              style: TextStyleConst.heading4WithColor(
                                  const Color(0xffB26801)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
