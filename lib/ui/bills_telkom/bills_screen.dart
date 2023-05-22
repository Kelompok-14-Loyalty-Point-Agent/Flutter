import 'package:flutter/material.dart';

class BillsScreen extends StatefulWidget {
  const BillsScreen({super.key});

  @override
  State<BillsScreen> createState() => _BillsScreenState();
}

class _BillsScreenState extends State<BillsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 15,
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 4)
                    ]),
                child: const CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: Image(
                    image: AssetImage('assets/images/bills.png'),
                    width: 21,
                    height: 28,
                  ),
                ),
              ),
              // Spacer(),
              Container(
                width: 178,
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 87,
                      height: 50,
                      child: Column(
                        children: [
                          Text('Silviana Rose'),
                          Text('Gold Member'),
                        ],
                      ),
                    ),
                    Container(
                      width: 75,
                      height: 48,
                      color: Color(0xFF030F51),
                      child: CircleAvatar(
                        radius: 15,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
