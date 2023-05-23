import 'package:capstone_14/widgets/article_box_custom.dart';
import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constant/provider_icon_constant.dart';

class DetailRewardScreen extends StatefulWidget {
  const DetailRewardScreen({super.key});

  @override
  State<DetailRewardScreen> createState() => _DetailRewardScreenState();
}

class _DetailRewardScreenState extends State<DetailRewardScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 78,
            ),
            child: Text(
              'Detail Reward',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 26),
            child: ArticleBox(
                images: "images",
                description: "description",
                title: "title",
                price: "price"),
          ),
          const SizedBox(height: 14),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ]),
            width: 336,
            height: 200,
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'How to Use',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '1. Open the TRIAD application on you mobile phone',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  Text('2. Go to Get Reward, to get your reward',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  Text('3. Chose phone balance',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  Text('4. Input your phone number',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  Text('5. Klik the “Redeem your tpoint” button, and you are',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  Text('done',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  Text('6. Make sure you have enough point',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 26, bottom: 10, right: 120),
            child: Text('Reedem Voucher - Phone Balance'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SizedBox(
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
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                      suffixIcon: _phoneNumberController.text.length >= 4
                          ? providerIcons(_phoneNumberController.text)
                          : null,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(Icons.contact_phone),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 30, right: 170),
            child: Text('input your phone number'),
          ),
          ButtonCustome(
            onPressed: () {},
            title: 'Reedem your point',
            backgroundColour: const Color(0xff030F51),
            width: 336,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
