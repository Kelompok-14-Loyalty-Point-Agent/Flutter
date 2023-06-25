import 'package:capstone_14/constant/textstyle_constant.dart';
import 'package:capstone_14/view/history_transaction/history_transaction_screen.dart';
import 'package:capstone_14/view_models/voucher_view_models.dart';
import 'package:capstone_14/widgets/article_box_custom.dart';
import 'package:capstone_14/widgets/top_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../service/reward/voucher_service.dart';
import '../../view_models/point_view_model.dart';
import '../home/home_page.dart';
import '../profile/profile_screen.dart';

class GetRewardScreen extends StatefulWidget {
  const GetRewardScreen({Key? key});

  @override
  _GetRewardScreenState createState() => _GetRewardScreenState();
}

class _GetRewardScreenState extends State<GetRewardScreen> {
  int? index;
  late PointViewModel pm;
  late VoucherViewModel voucherViewModel;
  final PointViewModel pointViewModel = PointViewModel();

  final List<Widget> pages = [
    const HomePage(),
    const HistoryTransaction(),
    const ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<PointViewModel>(context, listen: false).fetchPoint();
    });
    voucherViewModel = VoucherViewModel(VoucherService());
    voucherViewModel.getVouchers();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: index != null
            ? pages[index ?? 0]
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: TopBarPage(
                      icon: Image.asset(
                        "assets/icons/swap-coin.png",
                        scale: 4,
                      ),
                      useContainer: true,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 270, top: 10, bottom: 10),
                        child: Text(
                          "Get Reward",
                          style: TextStyleConst.description3WithColor(
                              Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: const Color(0xFF030F51),
                    ),
                    child: Row(
                      children: [
                        const Padding(
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
                          padding: const EdgeInsets.only(left: 13, top: 13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Your tPoint',
                                  style: TextStyleConst.description2WithColor(
                                      Colors.white)),
                              const SizedBox(height: 5),
                              Consumer<PointViewModel>(
                                builder: (context, pointViewModel, child) {
                                  return Text(
                                    pointViewModel.point.toString(),
                                    style: TextStyleConst.description1WithColor(
                                        Colors.white),
                                  );
                                },
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 5, top: 5),
                                child: Text(
                                    'Redeem your point before December 31, 2023',
                                    style: TextStyleConst.description4WithColor(
                                        Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24, right: 150),
                    child: Text('Redeem your tPoint',
                        style: TextStyleConst.heading3WithColor(Colors.black)),
                  ),
                  const Expanded(child: RedeemContentWidget()),
                ],
              ),
        bottomNavigationBar: Container(
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
      ),
    );
  }
}
