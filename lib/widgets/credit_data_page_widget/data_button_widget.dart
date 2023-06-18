import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:capstone_14/widgets/price_container_widget.dart';
import 'package:flutter/material.dart';

class DataButton extends StatefulWidget {
  const DataButton({super.key});

  @override
  State<DataButton> createState() => _DataButtonState();
}

class _DataButtonState extends State<DataButton> {
  TestModel? selectTestModel;

  List<TestModel> listTest = [
    TestModel(amount: "1GB 3D", price: "5.000", product: "Data"),
    TestModel(amount: "3GB 3D", price: "10.000", product: "Data"),
    TestModel(amount: "8GB 7D", price: "7.000", product: "Data"),
    TestModel(amount: "16GB 7D", price: "32.000", product: "Data"),
    TestModel(amount: "32GB 7D", price: "50.000", product: "Data"),
    TestModel(amount: "10GB 14D", price: "25.000", product: "Data"),
    TestModel(amount: "14GB 14D", price: "30.000", product: "Data"),
    TestModel(amount: "28GB 14D", price: "45.000", product: "Data"),
    TestModel(amount: "10GB 30D", price: "40.000", product: "Data"),
    TestModel(amount: "50GB 30D", price: "80.000", product: "Data"),
    TestModel(amount: "100GB", price: "120.000", product: "Data"),
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
                    product: listTest[index].product!,
                    amount: listTest[index].amount!,
                    price: "Pay : Rp ${listTest[index].price!}",
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
            padding: const EdgeInsets.only(right: 32, top: 18, bottom: 21),
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

class TestModel {
  String? amount;
  String? price;
  String? product;

  TestModel({
    this.amount,
    this.price,
    this.product,
  });
}
