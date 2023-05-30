import 'package:capstone_14/constant/provider_icon_constant.dart';
import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:capstone_14/widgets/credit_data_page_widget/data_button_widget.dart';
import 'package:capstone_14/widgets/price_container_widget.dart';
import 'package:capstone_14/widgets/top_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreditDataPaymentScreen extends StatefulWidget {
  static const routeName = '/creditDataPaymentScreen';
  final TestModel selectedTestModel;

  const CreditDataPaymentScreen({
    Key? key,
    required this.selectedTestModel,
  }) : super(key: key);

  @override
  State<CreditDataPaymentScreen> createState() =>
      _CreditDataPaymentScreenState();
}

class _CreditDataPaymentScreenState extends State<CreditDataPaymentScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  bool isDropdownOpen = false;
  String selectedPaymentMethod = "Choose Payment";
  String selectedPaymentMethodImage = "";
  List<String> paymentMethodImages = [
    "assets/images/payment_bri.png",
    "assets/images/payment_bni.png",
    "assets/images/payment_gopay.png",
    "assets/images/payment_shopee.png",
  ];
  List<String> paymentMethods = [
    "BRI",
    "BNI",
    "Gopay",
    "Shopee",
  ];

  @override
  void initState() {
    super.initState();
    _phoneNumberController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  void toggleDropdown() {
    setState(() {
      isDropdownOpen = !isDropdownOpen;
    });
  }

  void selectPaymentMethod(String method) {
    setState(() {
      int selectedIndex = paymentMethods.indexOf(method);
      selectedPaymentMethod = method;
      isDropdownOpen = false;
      selectedPaymentMethodImage = paymentMethodImages[selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
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
                        color: Color(0xFF1d1d1d),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 295,
                            height: 45,
                            child: TextFormField(
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
                                suffixIcon: _phoneNumberController
                                            .text.length >=
                                        4
                                    ? providerIcons(_phoneNumberController.text)
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
                    PriceContainerWidget(
                      amount: widget.selectedTestModel.amount,
                      price: widget.selectedTestModel.price,
                      containerShadow: BoxShadow(
                        offset: const Offset(2, 3),
                        color: Color.fromARGB(0.25.toInt(), 0, 0, 0)
                            .withOpacity(0.3),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 27),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: toggleDropdown,
                      child: SizedBox(
                        width: 303,
                        height: 46,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/icons/payment_icon.png",
                                scale: 3,
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                "Payment Method",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF1d1d1d),
                                ),
                              ),
                              const Spacer(),
                              if (selectedPaymentMethodImage.isNotEmpty)
                                Image.asset(
                                  selectedPaymentMethodImage,
                                  width: 24,
                                  height: 24,
                                ),
                              const SizedBox(width: 8),
                              Text(
                                selectedPaymentMethod,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF1d1d1d),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Image.asset(
                                "assets/icons/dropdown_icon.png",
                                width: 10,
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (isDropdownOpen)
                      Container(
                        width: 303,
                        height: 165,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: ListView.builder(
                          itemCount: paymentMethods.length,
                          itemBuilder: (context, index) {
                            final item = paymentMethods[index];
                            final image = paymentMethodImages[index];
                            return GestureDetector(
                              onTap: () => selectPaymentMethod(item),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 7),
                                child: Container(
                                  height: 25,
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        image,
                                        width: 40,
                                        height: 30,
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF1d1d1d),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                  ],
                ),
              ),
              ButtonCustome(
                width: 296,
                backgroundColour: const Color(0xFF931136),
                title: "Pay Now",
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/creditDataPaymentScreen',
                    // arguments: selectTestModel,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
