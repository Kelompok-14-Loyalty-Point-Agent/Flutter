import 'package:capstone_14/constant/textstyle_constant.dart';
import 'package:capstone_14/model/bills/bills_models.dart';
import 'package:capstone_14/ui/history_transaction/history_transaction_screen.dart';
import 'package:capstone_14/ui/home/home_page.dart';
import 'package:capstone_14/ui/profile/profile_screen.dart';
import 'package:capstone_14/ui/update_feature/update_feature_screen.dart';
import 'package:capstone_14/widgets/ewallet_widget/ewallet_container_widget.dart';
import 'package:capstone_14/widgets/top_bar_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class EwalletScreen extends StatefulWidget {
  const EwalletScreen({super.key});

  @override
  State<EwalletScreen> createState() => _EwalletScreenState();
}

class _EwalletScreenState extends State<EwalletScreen> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  int? index;

  final List<Widget> pages = [
    const HomePage(),
    const HistoryTransaction(),
    const ProfileScreen(),
  ];

  List<Widget> _images(BuildContext context) {
    return [
      SizedBox(
        height: 150,
        width: 290,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/phone.png'),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      // color: Colors.black.withOpacity(0.5),
                      child: const Text(
                        'Phone Voucher',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      SizedBox(
        height: 150,
        width: 290,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/internet-data.png'),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      // color: Colors.black.withOpacity(0.5),
                      child: const Text(
                        'Internet Data Voucher',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ];
  }

  List<BillsModel> listBills = [
    BillsModel(image: "assets/images/gopay.png"),
    BillsModel(image: "assets/images/dana.png"),
    BillsModel(image: "assets/images/ovo.png"),
    BillsModel(image: "assets/images/shopeepay.png"),
    BillsModel(image: "assets/images/linkaja.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index != null
          ? pages[index ?? 0]
          : Padding(
              padding: const EdgeInsets.only(top: 48),
              child: Column(
                children: [
                  TopBarPage(
                    icon: Image.asset('assets/icons/e-wallet.png', scale: 4),
                    useContainer: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11, right: 270),
                    child: Text(
                      'E-Wallet',
                      style: TextStyleConst.description2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CarouselSlider(
                    items: _images(context),
                    carouselController: _controller,
                    options: CarouselOptions(
                      enlargeFactor: double.infinity,
                      enlargeStrategy: CenterPageEnlargeStrategy.scale,
                      aspectRatio: double.infinity,
                      height: 150,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _images(context).asMap().entries.map(
                      (entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 6,
                            height: 6,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? const Color(0xffD9D9D9)
                                      : const Color(0xff008284))
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    children: List.generate(
                      listBills.length,
                      (index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UpdateFeatureScreen(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 12, right: 10, left: 10),
                          child: EwalletContainer(
                            image: listBills[index].image!,
                            containerShadow: BoxShadow(
                              offset: const Offset(2, 3),
                              color: Color.fromARGB(0.25.toInt(), 0, 0, 0)
                                  .withOpacity(0.3),
                              blurRadius: 8,
                              spreadRadius: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: BottomNavigationBar(
          currentIndex: index ?? 0,
          onTap: (int i) {
            setState(() {
              index = i;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          iconSize: 20,
          backgroundColor: const Color(0xFF030F51),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(left: 100),
                child: Icon(Icons.home),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history_edu_outlined),
              label: "history transaction",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(right: 100),
                child: Icon(Icons.person),
              ),
              label: "profile",
            ),
          ],
        ),
      ),
    );
  }
}
