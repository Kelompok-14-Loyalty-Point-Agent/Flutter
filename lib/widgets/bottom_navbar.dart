// import 'package:flutter/material.dart';

// import '../ui/home/home_page.dart';

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   int _currentIndex = 0;
//   final List<Widget> _pages = [
//     const HomePage(),
//     const HomePage(),
//     const HomePage(),
//   ];

//   void _onTabTapped(int index) {
//   setState(() {
//     _currentIndex = index;
//   });
// }

//   @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: const Text('Bottom Navigation Bar'),
//     ),
//     body: _pages[_currentIndex],
//     bottomNavigationBar: BottomNavigationBar(
//       currentIndex: _currentIndex,
//       onTap: _onTabTapped,
//       items: const [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.search),
//           label: 'Search',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.person),
//           label: 'Profile',
//         ),
//       ],
//     ),
//   );
// }
// }