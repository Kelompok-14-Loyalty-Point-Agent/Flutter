import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryButtonWidget extends StatefulWidget {
  const HistoryButtonWidget({super.key});

  @override
  State<HistoryButtonWidget> createState() => _HistoryButtonWidgetState();
}

class _HistoryButtonWidgetState extends State<HistoryButtonWidget> {
  List<HistoryModel> listHistory = [
    HistoryModel(
      image: Image.asset('assets/icons/simcard.png'),
      transaction: "Data (Telkomsel)",
      process: "Successful",
      price: "45.000",
      dateTime: "23/04/2023 | 13:23:10 WIB",
    ),
    HistoryModel(
      image: Image.asset('assets/icons/simcard.png'),
      transaction: "Credit (Axis)",
      process: "Successful",
      price: "52.000",
      dateTime: "23/04/2023 | 13:23:10 WIB",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Wrap(
        children: List.generate(
          listHistory.length,
          (index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: listHistory[index].image,
                    ),
                    const SizedBox(
                      width: 23,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listHistory[index].transaction,
                            style: GoogleFonts.expletusSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            listHistory[index].process,
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
                          listHistory[index].price,
                          style: GoogleFonts.ptSans(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Text(
                          listHistory[index].dateTime,
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
              if (listHistory.length > 1)
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
