import 'package:capstone_14/view_models/history_transaction_viewmodel/history_transaction_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HistoryButtonWidget extends StatefulWidget {
  const HistoryButtonWidget({super.key});

  @override
  State<HistoryButtonWidget> createState() => _HistoryButtonWidgetState();
}

class _HistoryButtonWidgetState extends State<HistoryButtonWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<HistoryTransactionViewModel>(context, listen: false)
          .getAllTransactionHistory();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HistoryTransactionViewModel>(
        builder: (context, value, child) {
      if (value.isLoading == true) {
        return const CircularProgressIndicator();
      } else {
        return Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Wrap(
            children: List.generate(
              value.listHistoryTransaction.length,
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
                          child: Image.asset('assets/icons/simcard.png'),
                        ),
                        const SizedBox(
                          width: 23,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                value.listHistoryTransaction[index].product!,
                                style: GoogleFonts.expletusSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              Text(
                                "${value.listHistoryTransaction[index].status![0].toUpperCase()}${value.listHistoryTransaction[index].status!.substring(1)}",
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
                              value.listHistoryTransaction[index].price
                                  .toString(),
                              style: GoogleFonts.ptSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Text(
                              value.listHistoryTransaction[index].createdAt
                                  .toString()
                                  .split(" ")
                                  .first,
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
                  if (value.listHistoryTransaction.length > 1)
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
    });
  }
}
