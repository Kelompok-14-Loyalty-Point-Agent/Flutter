import 'package:capstone_14/model/transaction/history_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnProcessButtonWidget extends StatefulWidget {
  const OnProcessButtonWidget({super.key});

  @override
  State<OnProcessButtonWidget> createState() => _OnProcessButtonWidgetState();
}

class _OnProcessButtonWidgetState extends State<OnProcessButtonWidget> {
  List<HistoryModel> listHistory = [
    HistoryModel(
      image: Image.asset('assets/icons/simcard.png'),
      transaction: "Data (Telkomsel)",
      process: "On-Process",
      price: "45.000",
      dateTime: "23/04/2023 | 13:23:10 WIB",
    ),
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
