import 'package:capstone_14/view/faq/faq2_screen.dart';
import 'package:flutter/material.dart';

import '../../constant/textstyle_constant.dart';
import '../history_transaction/history_transaction_screen.dart';
import '../home/home_page.dart';
import '../profile/profile_screen.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  List<String> list = [
    "What Transaction can be made on TRADE Poin?",
    "What payment methods are available on TRADE Poin",
    "What types of credit/debit cards can be used for transaction on TRADE Poin?",
    "Is there an admin fee changed for every transaction on TRADE Poin?",
    "Why am I changed a service fee when transacting on TRADE Poin?",
    "Why hasn’t the product I bought been received or accepted?",
    "What is the status of my refund?",
    "Why has the status of the bill not changed even though I have paid via TRADE Poin and have invoiced it in my account?",
    "What if my TRADE Poin account is used by someone else?",
    "I overpaid/underpaid the transaction, what should i do?",
    "Why is my account blocked?",
  ];
  int? index;

  final List<Widget> pages = [
    const HomePage(),
    const HistoryTransaction(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index != null
          ? pages[index ?? 0]
          : Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        'FAQ',
                        style: TextStyleConst.heading2,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff030F51),
                      ),
                      width: 296,
                      height: 620,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(top: 2),
                        itemCount: list.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 4),
                                      child: Text(
                                        list[index],
                                        style: TextStyleConst.description3,
                                      ),
                                    ),
                                  ),
                                  const Icon(Icons.arrow_forward_ios, size: 12),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Faq2Screen(),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: SizedBox(
          height: 50,
          child: BottomNavigationBar(
            currentIndex: index ?? 2,
            onTap: (int i) {
              setState(() {
                index = i;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            iconSize: 20,
            backgroundColor: const Color(0xFF030F51),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Icon(Icons.home),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history_edu_outlined),
                label: "history transaction",
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(right: 100),
                  child: Icon(Icons.person),
                ),
                label: "profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
