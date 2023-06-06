import 'package:capstone_14/constant/provider_icon_constant.dart';
import 'package:capstone_14/ui/history_transaction/history_transaction_screen.dart';
import 'package:capstone_14/widgets/credit_data_page_widget/credit_button_widget.dart';
import 'package:capstone_14/widgets/credit_data_page_widget/data_button_widget.dart';

import 'package:capstone_14/widgets/top_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../bottom_navbar_page/bottom_navbar.dart';
import '../home/home_page.dart';
import '../profile/profile_screen.dart';

class CreditDataScreen extends StatefulWidget {
  static const routeName = '/creditDataScreen';
  const CreditDataScreen({super.key});

  @override
  State<CreditDataScreen> createState() => _CreditDataScreenState();
}

class _CreditDataScreenState extends State<CreditDataScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _phoneNumberController.addListener(() {
      setState(() {
        _phoneNumberController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

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

  int? index;
  final List<Widget> pages = [
    const HomePage(),
    const HistoryTransaction(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: index != null
          ? pages[index ?? 0]
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 62),
                child: Column(
                  children: [
                    TopBarPage(
                      icon: Image.asset(
                        "assets/icons/simcard.png",
                        scale: 4,
                      ),
                      useContainer: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 14, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Credit/Data",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(
                                0xFF1d1d1d,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 295,
                                  height: 45,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    controller: _phoneNumberController,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF1d1d1d),
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Phone Number",
                                      hintStyle: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 10),
                                      suffixIcon:
                                          _phoneNumberController.text.length >=
                                                  4
                                              ? providerIcons(
                                                  _phoneNumberController.text)
                                              : null,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 32),
                                  child: Image.asset(
                                    "assets/icons/contact_icon.png",
                                    scale: 3,
                                  ),
                                )
                              ],
                            ),
                          ),
                          _phoneNumberController.text.length >= 4
                              ? Column(
                                  children: [
                                    Row(
                                      children: [
                                        _buttonBuilder(
                                            const CreditButton(), "Credit", 0),
                                        _buttonBuilder(
                                            const DataButton(), "Data", 1),
                                      ],
                                    ),
                                    if (_selectedIndex == 0)
                                      const CreditButton(),
                                    if (_selectedIndex == 1) const DataButton(),
                                  ],
                                )
                              : const Text(
                                  "Input your phone number.",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(
                                      0xFF008284,
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    ),
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
