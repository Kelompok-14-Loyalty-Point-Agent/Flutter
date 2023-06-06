import 'package:capstone_14/ui/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import '../credit_data_transaction/credit_data_screen.dart';
import '../get_reward/get_reward_screen.dart';
import '../home/home_page.dart';

class BottomNavBar extends StatefulWidget {
  final int currentIndex;

  const BottomNavBar({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;

  final List<Widget> pages = [
    const HomePage(),
    const CreditDataScreen(),
    const ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    index = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: Container(
        height: 50,
        child: BottomNavigationBar(
          currentIndex: index,
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
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_edu_outlined),
              label: "history transaction",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "profile",
            ),
          ],
        ),
      ),
    );
  }
}
