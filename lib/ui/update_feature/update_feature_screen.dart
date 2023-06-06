import 'package:capstone_14/constant/textstyle_constant.dart';
import 'package:flutter/material.dart';

class UpdateFeatureScreen extends StatelessWidget {
  const UpdateFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Text(
                "Hi User!",
                style: TextStyleConst.heading3,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 80),
                child: SizedBox(
                  width: 210,
                  child: Text(
                    "This feature is under development, please check regularly!",
                    textAlign: TextAlign.center,
                    style: TextStyleConst.description4,
                  ),
                ),
              ),
              Image.asset(
                "assets/images/App-development.png",
                width: 244,
                height: 244,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
