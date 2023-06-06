import 'package:flutter/material.dart';
import '../history_transaction/history_transaction_screen.dart';
import '../home/home_page.dart';
import '../profile/profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  final int? currentIndex;

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
    const HistoryTransaction(),
    const ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    index = widget.currentIndex ?? 0;
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
