// import 'package:capstone_14/constant/provider_icon_constant.dart';
// import 'package:capstone_14/view/bottom_navbar_page/bottom_navbar.dart';
// ignore_for_file: use_build_context_synchronously

import 'package:capstone_14/constant/product_constant.dart';
import 'package:capstone_14/model/stock/stock_response_body.dart';
import 'package:capstone_14/service/transaction/create_transaction_service.dart';
import 'package:capstone_14/view_models/credit_data_viewmodel/credit_data_view_model.dart';
import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:capstone_14/widgets/price_container_widget.dart';
import 'package:capstone_14/widgets/top_bar_page.dart';
import 'package:capstone_14/widgets/transaction_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class CreditDataPaymentScreen extends StatefulWidget {
  static const routeName = '/creditDataPaymentScreen';
  final int? stockId;
  final StockModel selectedStock;

  const CreditDataPaymentScreen({
    Key? key,
    required this.selectedStock,
    required this.stockId,
  }) : super(key: key);

  @override
  State<CreditDataPaymentScreen> createState() =>
      _CreditDataPaymentScreenState();
}

class _CreditDataPaymentScreenState extends State<CreditDataPaymentScreen> {
  late CreditDataViewModel vm;
  PaymentMethodProvider paymentMethodProvider = PaymentMethodProvider();
  bool isDropdownOpen = false;
  String selectedPaymentMethod = "Choose Payment";
  String selectedPaymentMethodImage = "";

  @override
  void initState() {
    vm = Provider.of<CreditDataViewModel>(context, listen: false);
    super.initState();
  }

  @override
  void dispose() {
    vm.phoneNumberController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => paymentMethodProvider,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 48),
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
                              width: 262,
                              height: 45,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                controller: vm.phoneNumberController,
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
                                  suffixIcon: vm.data?.namaIcon,
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
                        product: widget.selectedStock.stockId!.toString(),
                        amount: widget.selectedStock.stock!.toString(),
                        price: "Pay : Rp ${widget.selectedStock.price!}",
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
                  child: Consumer<PaymentMethodProvider>(
                    builder: (context, paymentMethodProvider, _) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: paymentMethodProvider.toggleDropdown,
                            child: SizedBox(
                              width: 303,
                              height: 46,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
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
                                    if (paymentMethodProvider
                                        .selectedPaymentMethodImage.isNotEmpty)
                                      Image.asset(
                                        paymentMethodProvider
                                            .selectedPaymentMethodImage,
                                        width: 24,
                                        height: 24,
                                      ),
                                    const SizedBox(width: 8),
                                    Text(
                                      paymentMethodProvider
                                          .selectedPaymentMethod,
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
                          if (paymentMethodProvider.isDropdownOpen)
                            Container(
                              width: 303,
                              height: 165,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: ListView.builder(
                                itemCount:
                                    paymentMethodProvider.paymentMethods.length,
                                itemBuilder: (context, index) {
                                  final item = paymentMethodProvider
                                      .paymentMethods[index];
                                  final image = paymentMethodProvider
                                      .paymentMethodImages[index];
                                  return GestureDetector(
                                    onTap: () {
                                      final paymentProvider =
                                          Provider.of<PaymentMethodProvider>(
                                        context,
                                        listen: false,
                                      );
                                      paymentProvider.selectPaymentMethod(item);
                                    },
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
                      );
                    },
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
                  onPressed: () async {
                    bool successTransaction =
                        await CreateTransactionService().postTransaction(
                      context,
                      phone: vm.phoneNumberController.text,
                      stockDetailsId: widget.stockId!,
                      paymentMethod:
                          paymentMethodProvider.selectedPaymentMethod,
                    );

                    if (successTransaction) {
                      if (paymentMethodProvider.selectedPaymentMethod !=
                          'Choose Payment') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TransactionSuccesScreen(
                              product: productName(
                                  widget.selectedStock.stockId ?? 0),
                              method:
                                  paymentMethodProvider.selectedPaymentMethod,
                              price: widget.selectedStock.price!,
                              point: widget.selectedStock.price! / 1000,
                            ),
                          ),
                        );
                        vm.data = null;
                        vm.phoneNumberController.clear();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            duration: Duration(seconds: 1),
                            backgroundColor: Color(0xFF931136),
                            content: Center(
                              child: Text(
                                'Please Choose Payment Method!',
                              ),
                            ),
                          ),
                        );
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
