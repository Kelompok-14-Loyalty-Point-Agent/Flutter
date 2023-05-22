import 'package:flutter/material.dart';

class TopBarPage extends StatelessWidget {
  final bool? useContainer;
  final Widget? icon;
  const TopBarPage({
    super.key,
    this.icon,
    this.useContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (useContainer == true)
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 96),
            child: Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: icon,
            ),
          )
        else
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 96),
            child: icon,
          ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              //ganti jadi variabel nama
              "Silviana Rose",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(
                  0xFF030F51,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              //ganti jadi variabel status
              "Gold Member",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(
                  0xFFB26801,
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 75,
          height: 48,
          decoration: const BoxDecoration(
            color: Color(0xFF030F51),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6),
              bottomLeft: Radius.circular(6),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.fromLTRB(24, 8, 20, 9),
            child: CircleAvatar(
              radius: 50,
              backgroundImage:
                  //pake foto dari api(?)
                  AssetImage("assets/images/profilePict.png"),
            ),
          ),
        ),
      ],
    );
  }
}
