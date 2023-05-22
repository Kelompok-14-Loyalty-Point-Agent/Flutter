import 'package:capstone_14/constant/provider_icon_constant.dart';
import 'package:capstone_14/widgets/top_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreditDataScreen extends StatefulWidget {
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

  Widget _buttonBuilder(String title, int myIndex) {
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
      body: Padding(
        padding: const EdgeInsets.only(top: 62),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                              contentPadding:
                                  const EdgeInsets.fromLTRB(10, 0, 0, 10),
                              suffixIcon: _phoneNumberController.text.length >=
                                      4
                                  ? providerIcons(_phoneNumberController.text)
                                  : null,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 32),
                          child: Icon(Icons.book),
                        )
                      ],
                    ),
                  ),
                  _phoneNumberController.text.length >= 4
                      ? Row(
                          children: [
                            _buttonBuilder("Credit", 0),
                            _buttonBuilder("Data", 1),
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
    );
  }
}