import 'package:capstone_14/model/transaction/history_transaction_response_body.dart';
import 'package:capstone_14/service/transaction/history_transaction_service.dart';
import 'package:flutter/material.dart';

class HistoryTransactionViewModel with ChangeNotifier {
  final TransactionHistoryService _transactionHistoryService =
      TransactionHistoryService();
  List<TransactionHistoryModel> transactionHistoryData = [];

  Future<void> getTransactionHistoryData() async {
    transactionHistoryData =
        await _transactionHistoryService.getTransactionHistory();
    print(transactionHistoryData.length);
  }
}
