import 'package:capstone_14/ui/get_reward/detail_reward_screen.dart';
import 'package:capstone_14/widgets/article_box_custom.dart';
import 'package:capstone_14/widgets/top_bar_page.dart';
import 'package:flutter/material.dart';

class GetRewardScreen extends StatefulWidget {
  const GetRewardScreen({Key? key});

  @override
  _GetRewardScreenState createState() => _GetRewardScreenState();
}

class _GetRewardScreenState extends State<GetRewardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 62),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBarPage(
              icon: Image.asset(
                "assets/icons/swap-coin.png",
                scale: 4,
              ),
              useContainer: true,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(32, 14, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Get Reward",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1d1d1d),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color(0xFF030F51),
                ),
                height: 80,
                width: double.infinity,
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Image(
                          width: 28,
                          height: 28,
                          image: AssetImage(
                            'assets/icons/coin.png',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 13, top: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your tPoint',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '1030',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Redeem your point before December 31, 2023',
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24, left: 27),
              child: Text(
                'Redeem your point',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: ListView(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailRewardScreen(),
                          ),
                        );
                      },
                      child: ArticleBox(
                          images: 'images',
                          description: 'description',
                          title: 'title',
                          price: 'price'),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailRewardScreen(),
                          ),
                        );
                      },
                      child: ArticleBox(
                          images: 'images',
                          description: 'description',
                          title: 'title',
                          price: 'price'),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailRewardScreen(),
                          ),
                        );
                      },
                      child: ArticleBox(
                          images: 'images',
                          description: 'description',
                          title: 'title',
                          price: 'price'),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailRewardScreen(),
                          ),
                        );
                      },
                      child: ArticleBox(
                          images: 'images',
                          description: 'description',
                          title: 'title',
                          price: 'price'),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
