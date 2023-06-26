import 'package:capstone_14/model/stock/stock_response_body.dart';
import 'package:capstone_14/view/credit_data_transaction/credit_data_payment_screen.dart';
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
            itemCount: value.hasilData2.length,
            itemBuilder: (context, index) {
              final stockModel = value.hasilData2[index];
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
                    amount: '${stockModel.stock} GB',
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreditDataPaymentScreen(
                      selectedStock: selectedStock!,
                      stockId: selectedStock?.id,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
