import 'package:flutter/material.dart';

class HistoryModel {
  final Image image;
  final String transaction;
  final String process;
  final String price;
  final String dateTime;

  HistoryModel({
    required this.image,
    required this.transaction,
    required this.process,
    required this.price,
    required this.dateTime,
  });
}