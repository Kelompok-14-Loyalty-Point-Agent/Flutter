import 'package:capstone_14/model/bills/bills_models.dart';
import 'package:capstone_14/view/history_transaction/history_transaction_screen.dart';
import 'package:capstone_14/view/home/home_page.dart';
import 'package:capstone_14/view/profile/profile_screen.dart';
import 'package:capstone_14/view/update_feature/update_feature_screen.dart';
import 'package:capstone_14/widgets/bills_widget/bills_container_widget.dart';
import 'package:capstone_14/widgets/top_bar_page.dart';
import 'package:flutter/material.dart';

class BillsScreen extends StatefulWidget {
  const BillsScreen({super.key});

  @override
  State<BillsScreen> createState() => _BillsScreenState();
}

class _BillsScreenState extends State<BillsScreen> {
  BillsModel? selectTestModel;
  int? index;
  final List<Widget> pages = [
    const HomePage(),
    const HistoryTransaction(),
    const ProfileScreen(),
  ];

  List<BillsModel> listBills = [
    BillsModel(image: "assets/icons/pln_icon.png", label: "PLN"),
    BillsModel(image: "assets/icons/pbb_icon.png", label: "PBB"),
    BillsModel(image: "assets/icons/pdam_icon.png", label: "PDAM"),
    BillsModel(image: "assets/icons/samsat_icon.png", label: "Samsat"),
    BillsModel(image: "assets/icons/internet_icon.png", label: "Internet"),
    BillsModel(image: "assets/icons/education_icon.png", label: "Education"),
    BillsModel(image: "assets/icons/telkom_icon.png", label: "Telkom"),
    BillsModel(image: "assets/icons/bpjs_icon.png", label: "BPJS"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index != null
          ? pages[index ?? 0]
          : Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 42),
                  TopBarPage(
                    icon: Image.asset(
                      "assets/icons/bill.png",
                      scale: 4,
                    ),
                    useContainer: true,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(47, 14, 0, 0),
                    child: Text(
                      "Bills",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(
                          0xFF1d1d1d,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 70),
                    child: Column(
                      children: [
                        Wrap(
                          children: List.generate(
                            listBills.length,
                            (index) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const UpdateFeatureScreen(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 24, right: 20),
                                child: BillsContainerWidget(
                                  image: listBills[index].image!,
                                  label: listBills[index].label!,
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
                ],
              ),
            ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: SizedBox(
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
