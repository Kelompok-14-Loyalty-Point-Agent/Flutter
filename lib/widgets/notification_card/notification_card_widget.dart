import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../view/notification/detail_notification_screen.dart';

class NotificationCardWidget extends StatelessWidget {
  final String title;
  final String description;
  final String dateTime;
  const NotificationCardWidget({
    super.key,
    required this.title,
    required this.description,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailNotifScreen(),
            ),
          );
        },
        child: SizedBox(
          width: 270,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.expletusSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: const Color(0xff030F51),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        description,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.ptSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: const Color(0xff1D1D1D),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Text(
                      dateTime,
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 8,
                        color: const Color(0xff1D1D1D),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        size: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
