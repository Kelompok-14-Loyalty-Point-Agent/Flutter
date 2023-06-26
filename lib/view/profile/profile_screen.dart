import 'package:capstone_14/constant/textstyle_constant.dart';
import 'package:capstone_14/service/profile/profile_service.dart';
import 'package:capstone_14/view/auth/login/login_screen.dart';
import 'package:capstone_14/view/faq/faq_screen.dart';
import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //Profile Content
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 78, bottom: 29),
                  child: Text(
                    "Profile",
                    style: TextStyleConst.heading3,
                  ),
                ),
                Container(
                  width: 296,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(0.25),
                        spreadRadius: 4,
                        blurRadius: 15,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 25),
                        child: SizedBox(
                          width: 60,
                          child: Stack(
                            children: <Widget>[
                              const SizedBox(
                                width: 55,
                                height: 55,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      //pake foto dari api(?)
                                      AssetImage(
                                          "assets/images/profilePict.png"),
                                ),
                              ),
                              Positioned(
                                top: 44,
                                left: 50,
                                child: SizedBox(
                                  height: 10,
                                  child:
                                      Image.asset("assets/icons/edit_icon.png"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 17, bottom: 5),
                            child: Text(
                              "Silviana Rose",
                              style: TextStyleConst.heading4,
                            ),
                          ),
                          SizedBox(
                            width: 141,
                            child: Text(
                              "Pangeran Antasari Street No.22 Pejaten, South Jakarta",
                              style: TextStyleConst.description4,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60, left: 5),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Edit More",
                            style: TextStyle(
                              fontFamily: "PTSans",
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff008284),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // Profile Content End
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    Text(
                      "Full Name",
                      style: TextStyleConst.heading4WithColor(
                        const Color(0xff1d1d1d),
                      ),
                    ),
                    SizedBox(
                      width: 295,
                      height: 35,
                      child: TextField(
                        style: TextStyleConst.description3,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 5, left: 10),
                          hintText: "Silviana Rose",
                          hintStyle: TextStyleConst.description3WithColor(
                            const Color(0xff1d1d1d).withOpacity(.70),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Email Address",
                      style: TextStyleConst.heading4WithColor(
                        const Color(0xff1d1d1d),
                      ),
                    ),
                    SizedBox(
                      width: 295,
                      height: 35,
                      child: TextField(
                        style: TextStyleConst.description3,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 5, left: 10),
                          hintText: "silvianarose@gmail.com",
                          hintStyle: TextStyleConst.description3WithColor(
                            const Color(0xff1d1d1d).withOpacity(.70),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Password",
                      style: TextStyleConst.heading4WithColor(
                        const Color(0xff1d1d1d),
                      ),
                    ),
                    SizedBox(
                      width: 295,
                      height: 35,
                      child: TextField(
                        style: TextStyleConst.description3,
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(top: 10, left: 10),
                          hintText: "***************",
                          hintStyle: TextStyleConst.description3WithColor(
                            const Color(0xff1d1d1d).withOpacity(.70),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 36),
                      child: ButtonCustome(
                        onPressed: () {},
                        title: "Done",
                        backgroundColour: const Color(0xff030F51),
                        width: 295,
                        style:
                            TextStyleConst.description3WithColor(Colors.white),
                      ),
                    ),
                    Text(
                      "Info",
                      style: TextStyleConst.heading5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 7),
                      child: ButtonCustome(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FaqScreen(),
                            ),
                          );
                        },
                        title: "FAQ",
                        backgroundColour: const Color(0xff030F51),
                        width: 295,
                        style:
                            TextStyleConst.description3WithColor(Colors.white),
                      ),
                    ),
                    ButtonCustome(
                      onPressed: () {},
                      title: "Terms and Condition",
                      backgroundColour: const Color(0xff030F51),
                      width: 295,
                      style: TextStyleConst.description3WithColor(Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7, bottom: 28),
                      child: ButtonCustome(
                        onPressed: () {},
                        title: "Privacy Policy",
                        backgroundColour: const Color(0xff030F51),
                        width: 295,
                        style:
                            TextStyleConst.description3WithColor(Colors.white),
                      ),
                    ),
                    ButtonCustome(
                      onPressed: () async {
                        final successLogOut =
                            await ProfileService().postLogout(context);
                        if (successLogOut) {
                          // ignore: use_build_context_synchronously
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        }
                        // final prefs = await SharedPreferences.getInstance();
                        // prefs.remove('token');
                      },
                      title: "Log Out",
                      backgroundColour: const Color(0xff931136),
                      width: 295,
                      style: TextStyleConst.description3WithColor(Colors.white),
                    ),
                    const SizedBox(height: 26),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
