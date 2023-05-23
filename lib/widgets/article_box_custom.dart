import 'package:flutter/material.dart';

class ArticleBox extends StatelessWidget {
  final String images;
  final String description;
  final String title;
  final String price;

  ArticleBox({
    required this.images,
    required this.description,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ]),
        width: 336,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/photobox.png',
                width: 336,
                height: 130,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 5),
                    child: Column(
                      children: [
                        Text(
                          'Phone Balance',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          'Rp. 10.000',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 170, top: 10),
                    child: Image.asset(
                      'assets/icons/coin.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 2),
                    child: Text('1000'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
