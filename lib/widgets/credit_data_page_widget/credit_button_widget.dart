import 'package:capstone_14/model/stock/stock_response_body.dart';
import 'package:capstone_14/view_models/credit_data_viewmodel/credit_data_view_model.dart';
import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:capstone_14/widgets/credit_data_page_widget/data_button_widget.dart';
import 'package:capstone_14/widgets/price_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreditButton extends StatefulWidget {
  const CreditButton({Key? key}) : super(key: key);

  @override
  State<CreditButton> createState() => _CreditButtonState();
}

class _CreditButtonState extends State<CreditButton> {
  StockModel? selectedStock;

  @override
  Widget build(BuildContext context) {
    return Consumer<CreditDataViewModel>(
      builder: (context, value, child) => Column(
        children: [
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 70,
            ),
            shrinkWrap: true,
            itemCount: value.hasilData.length,
            itemBuilder: (context, index) {
              final stockModel = value.hasilData[index];
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedStock = stockModel;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16, right: 32),
                  child: PriceContainerWidget(
                    product: '${stockModel.stockId}',
                    amount: '${stockModel.stock}',
                    price: "Pay : Rp ${stockModel.price}",
                    containerShadow: selectedStock == stockModel
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
                  arguments: selectedStock,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
