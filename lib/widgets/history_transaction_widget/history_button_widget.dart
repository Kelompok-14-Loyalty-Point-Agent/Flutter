import 'package:capstone_14/constant/product_constant.dart';
import 'package:capstone_14/model/transaction/history_transaction_response_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryButtonWidget extends StatefulWidget {
  const HistoryButtonWidget({super.key});

  @override
  State<HistoryButtonWidget> createState() => _HistoryButtonWidgetState();
}

class _HistoryButtonWidgetState extends State<HistoryButtonWidget> {
  List<TransactionHistoryModel> transactionHistoryData = [];

  @override
  Widget build(BuildContext context) {
    print(transactionHistoryData.length);
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Wrap(
        children: List.generate(
          transactionHistoryData.length,
          (index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    // SizedBox(
                    //   width: 20,
                    //   height: 20,
                    //   child: listHistory[index].image,
                    // ),
                    const SizedBox(
                      width: 23,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productName(transactionHistoryData[index].stockId!),
                            style: GoogleFonts.expletusSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            transactionHistoryData[index].status!,
                            style: GoogleFonts.ptSans(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          transactionHistoryData[index].price!.toString(),
                          style: GoogleFonts.ptSans(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Text(
                          transactionHistoryData[index].createdAt!.toString(),
                          style: GoogleFonts.ptSans(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              if (transactionHistoryData.length > 1)
                const Divider(
                  color: Colors.black,
                  height: 1,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryModel {
  final Image image;
  final String transaction;
  final String process;
  final String price;
  final String dateTime;

  HistoryModel({
    required this.image,
    required this.transaction,
    required this.process,
    required this.price,
    required this.dateTime,
  });
}
