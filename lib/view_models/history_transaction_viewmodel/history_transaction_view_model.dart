import 'package:capstone_14/model/transaction/history_transaction_response_body.dart';
import 'package:capstone_14/service/transaction/history_transaction_service.dart';
import 'package:flutter/material.dart';

class HistoryTransactionViewModel with ChangeNotifier {
  // final TransactionHistoryService _getHistory = TransactionHistoryService();
  List<TransactionHistoryModel> _listTransactionHistory = [];

  List<TransactionHistoryModel> get listHistoryTransaction => _listTransactionHistory;

  bool isLoading = false;

  Future<void> getAllTransactionHistory() async {
    isLoading = true;
    notifyListeners();
    final response = await TransactionHistoryService().getTransactionHistory();
    _listTransactionHistory = response;
    isLoading = false;
    notifyListeners();
  }
}