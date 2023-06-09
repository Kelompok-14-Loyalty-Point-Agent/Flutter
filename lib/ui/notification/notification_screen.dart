import 'package:capstone_14/widgets/top_bar_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/notification_card/notification_card_widget.dart';
import '../history_transaction/history_transaction_screen.dart';
import '../home/home_page.dart';
import '../profile/profile_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int? index;

  final List<Widget> pages = [
    const HomePage(),
    const HistoryTransaction(),
    const ProfileScreen(),
  ];
  List<NotifModel> notifs = [
    NotifModel(
      title: 'Yeay, You Got tPoint!',
      description:
          "There is an additional 10 tPoint that can be exchanged for various rewards in the application!",
      dateTime: '1 Mei',
    ),
    NotifModel(
      title: '15% Discount of Voucher Game',
      description: "Use your voucher before it's gone!",
      dateTime: '27 Apr',
    ),
    NotifModel(
      title: 'Successfully Reedem tPoint',
      description: "Yeay! your tPoints have been successfully used!",
      dateTime: '27 Apr',
    ),
    NotifModel(
      title: 'Yeay, You Got tPoint Voucher!',
      description:
          "Claim yout tPoin Voucher now! Reedem tPoin into e-wallet you want.",
      dateTime: '25 Apr',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index != null
          ? pages[index ?? 0]
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 62),
                child: Column(
                  children: [
                    TopBarPage(
                      useContainer: false,
                      icon: IconButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        icon: const Icon(
                          Icons.notifications,
                          color: Color(0xff008284),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SingleChildScrollView(
                      child: Container(
                        width: 300,
                        height: 580,
                        decoration: BoxDecoration(
                          color: const Color(0xff030F51),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListView.builder(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 17),
                          itemCount: notifs.length,
                          itemBuilder: (BuildContext context, index) {
                            return NotificationCardWidget(
                              title: notifs[index].title,
                              description: notifs[index].description,
                              dateTime: notifs[index].dateTime,
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
      bottomNavigationBar: Container(
        height: 50,
        child: BottomNavigationBar(
          currentIndex: index ?? 0,
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
    );
  }
}

class NotifModel {
  final String title;
  final String description;
  final String dateTime;

  NotifModel({
    required this.title,
    required this.description,
    required this.dateTime,
  });
}
