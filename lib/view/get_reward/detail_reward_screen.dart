import 'package:capstone_14/constant/textstyle_constant.dart';
import 'package:capstone_14/model/reward/voucher_models.dart';
import 'package:capstone_14/view_models/credit_data_viewmodel/credit_data_view_model.dart';
import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../service/reward/redeem_voucher_service.dart';
import '../../view_models/redeem_voucher_view_model.dart';
import '../../widgets/transaction_success_screen.dart';

class DetailRewardScreen extends StatefulWidget {
  const DetailRewardScreen({super.key});

  @override
  State<DetailRewardScreen> createState() => _DetailRewardScreenState();
}

class _DetailRewardScreenState extends State<DetailRewardScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final RedeemVoucherService _redeemVoucherService = RedeemVoucherService();

  @override
  void initState() {
    super.initState();
    _phoneNumberController.addListener(() {});
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff030F51),
        // shadowColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Text('Detail Reward', style: TextStyleConst.heading2),
              ),
              // const Expanded(child: RedeemContentWidget()),
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
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('How to Use', style: TextStyleConst.heading4),
                      Text(
                        '1. Open the TRIAD application on you mobile phone',
                        style: TextStyleConst.description3,
                      ),
                      Text('2. Go to Get Reward, to get your reward',
                          style: TextStyleConst.description3),
                      Text('3. Chose phone balance',
                          style: TextStyleConst.description3),
                      Text('4. Input your phone number',
                          style: TextStyleConst.description3),
                      Text(
                          '5. Klik the “Redeem your tpoint” button, and you are',
                          style: TextStyleConst.description3),
                      Text('done', style: TextStyleConst.description4),
                      Text('6. Make sure you have enough point',
                          style: TextStyleConst.description3),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26, bottom: 10, right: 150),
                child: Text('Reedem Voucher - Phone Balance',
                    style: TextStyleConst.description3WithColor(Colors.black)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: SizedBox(
                      width: 295,
                      height: 45,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        controller: _phoneNumberController,
                        style: TextStyleConst.description3,
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          hintStyle: TextStyleConst.description3,
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(5, 0, 0, 10),
                          suffixIcon: CreditDataViewModel().data?.namaIcon,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.contact_phone),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 30, right: 190),
                child: Text(
                  'Input your phone number',
                  style: TextStyleConst.description3WithColor(
                      const Color(0XFF008284)),
                ),
              ),
              ButtonCustome(
                onPressed: () async {
                  String phoneNumber = _phoneNumberController.text;
                  int voucherId = 1;
                  String paymentMethod = 'tPoint';
                  int price = 300;
                  double point = 9999;
                  String product = 'phone balance';

                  bool success = await _redeemVoucherService.postRedeemVoucher(
                    context,
                    phone: phoneNumber,
                    voucherId: voucherId,
                    paymentMethod: paymentMethod,
                    price: price,
                    point: point,
                    product: product,
                  );

                  if (success) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TransactionSuccesScreen(
                          method: paymentMethod,
                          price: price,
                          product: product,
                          point: point,
                        ),
                      ),
                    );
                  }
                },
                title: 'Reedem your point',
                backgroundColour: const Color(0xff030F51),
                width: 336,
                style: TextStyleConst.description3WithColor(Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
