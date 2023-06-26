import 'package:capstone_14/view/faq/faq2_screen.dart';
import 'package:flutter/material.dart';

import '../../constant/textstyle_constant.dart';
import '../history_transaction/history_transaction_screen.dart';
import '../home/home_page.dart';
import '../profile/profile_screen.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  _FaqScreenState createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  List<String> list = [
    "1. Apa itu Kredit Data?",
    "2. Apa itu Kredit Data?",
    "3. Apa itu Kredit Data?",
    "4. Apa itu Kredit Data?",
    "5. Apa itu Kredit Data?",
    "6. Apa itu Kredit Data?",
    "7. Apa itu Kredit Data?",
    "8. Apa itu Kredit Data?",
    "9. Apa itu Kredit Data?",
    "10. Apa itu Kredit Data?",
    "11. Apa itu Kredit Data?",
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
                      padding: const EdgeInsets.only(top: 50),
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
                                    child: Text(
                                      list[index],
                                      style: TextStyleConst.description3,
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
        child: Container(
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
