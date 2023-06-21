import 'package:capstone_14/view_models/credit_data_viewmodel/credit_data_view_model.dart';
import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:capstone_14/widgets/price_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataButton extends StatefulWidget {
  const DataButton({super.key});

  @override
  State<DataButton> createState() => _DataButtonState();
}

class _DataButtonState extends State<DataButton> {
  TestModel? selectTestModel;

  @override
  Widget build(BuildContext context) {
    return Consumer<CreditDataViewModel>(
      builder: (context, value, child) => Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: value.hasilData2.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    // selectTestModel = listTest[index];
                    value.hasilData2[index];
                  });
                  // print(selectTestModel);
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16, right: 32),
                  child: PriceContainerWidget(
                    product: '${value.hasilData2[index]['stockId']}',
                    amount: '${value.hasilData2[index]['stock']} GB',
                    price: "Pay : Rp ${value.hasilData2[index]['price']}",
                    containerShadow:
                        selectTestModel == value.hasilData2[index]
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
              );
            },
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
