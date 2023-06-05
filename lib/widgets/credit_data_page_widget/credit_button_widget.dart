import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:capstone_14/widgets/credit_data_page_widget/data_button_widget.dart';
import 'package:capstone_14/widgets/price_container_widget.dart';
import 'package:flutter/material.dart';

class CreditButton extends StatefulWidget {
  const CreditButton({super.key});

  @override
  State<CreditButton> createState() => _CreditButtonState();
}

class _CreditButtonState extends State<CreditButton> {
  TestModel? selectTestModel;

  List<TestModel> listTest = [
    TestModel(amount: "5.000", price: "Pay : Rp 7.000"),
    TestModel(amount: "10.000", price: "Pay : Rp 11.000"),
    TestModel(amount: "15.000", price: "Pay : Rp 16.500"),
    TestModel(amount: "25.000", price: "Pay : Rp 27.500"),
    TestModel(amount: "30.000", price: "Pay : Rp 32.000"),
    TestModel(amount: "50.000", price: "Pay : Rp 52.000"),
    TestModel(amount: "100.000", price: "Pay : Rp 102.000"),
    TestModel(amount: "200.000", price: "Pay : Rp 201.500"),
    TestModel(amount: "300.000", price: "Pay : Rp 301.000"),
    TestModel(amount: "500.000", price: "Pay : Rp 498.500"),
    TestModel(amount: "1.000.000", price: "Pay : Rp 999.000"),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Wrap(
            children: List.generate(
              listTest.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectTestModel = listTest[index];
                  });
                  print(selectTestModel);
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16, right: 32),
                  child: PriceContainerWidget(
                    amount: listTest[index].amount!,
                    price: listTest[index].price!,
                    containerShadow: selectTestModel == listTest[index]
                        ? BoxShadow(
                            color: Colors.blue.withOpacity(1),
                            blurRadius: 2,
                            spreadRadius: 2,
                          )
                        : BoxShadow(
                            offset: const Offset(2, 3),
                            color: Color.fromARGB(0.25.toInt(), 0, 0, 0)
                                .withOpacity(0.3),
                            blurRadius: 8,
                            spreadRadius: 2,
                          ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32, top: 18),
            child: ButtonCustome(
              width: 296,
              backgroundColour: const Color(0xFF030F51),
              title: "Buy",
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/creditDataPaymentScreen',
                  arguments: selectTestModel,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
