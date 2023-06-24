import 'package:capstone_14/model/reward/voucher_models.dart';
import 'package:capstone_14/view_models/voucher_view_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constant/textstyle_constant.dart';

class ArticleBox extends StatelessWidget {
  // const ArticleBox({Key? key, required images, required description, required title, required price}) : super(key: key);
  VoucherModels? voucher;

  @override
  Widget build(BuildContext context) {
    return Consumer<VoucherViewModel>(
      builder: (context, voucherViewModel, child) {
        if (voucherViewModel.isLoading) {
          return CircularProgressIndicator();
        } else if (voucherViewModel.errorMessage.isNotEmpty) {
          return Text(voucherViewModel.errorMessage);
        } else {
          final vouchers = voucherViewModel.vouchers;

          return ListView.builder(
            shrinkWrap: true,
            itemCount: vouchers.length,
            itemBuilder: (context, index) {
              final voucher = vouchers[index];
              final data = voucher.data!;

              return Container(
                margin: const EdgeInsets.only(left: 13, right: 13),
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
                  ],
                ),
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
                                  data[index].product ?? '',
                                  style: TextStyleConst.description4WithColor(
                                    Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  data[index].benefit ?? '',
                                  style: TextStyleConst.heading5WithColor(
                                    Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}
