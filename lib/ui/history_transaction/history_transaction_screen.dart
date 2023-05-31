import 'package:capstone_14/widgets/top_bar_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/history_transaction_widget/history_button_widget.dart';

class HistoryTransaction extends StatefulWidget {
  const HistoryTransaction({super.key});

  @override
  State<HistoryTransaction> createState() => _HistoryTransactionState();
}

class _HistoryTransactionState extends State<HistoryTransaction> {
  int _selectedIndex = 0;

  Widget _buttonBuilder(Widget selectedButton, String title, int myIndex) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = myIndex;
        });
      },
      child: Container(
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: _selectedIndex == myIndex
              ? const Color(0xFF2DB5AB)
              : Colors.transparent,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: _selectedIndex == myIndex
                    ? Colors.white
                    : const Color(0xFF1d1d1d),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 62),
            child: TopBarPage(
              icon: Image.asset(
                "assets/images/arrow_back.png",
                scale: 4,
              ),
              useContainer: true,
            ),
          ),
          Row(
            children: [
              // _buttonBuilder(HistoryButton(), "History", 0)
            ],
          )
        ],
      ),
    );
  }
}
