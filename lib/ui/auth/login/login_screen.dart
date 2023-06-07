import 'package:capstone_14/service/auth/login/login_service.dart';
import 'package:capstone_14/ui/auth/register/register_screen.dart';
import 'package:capstone_14/ui/bottom_navbar_page/bottom_navbar.dart';
import 'package:capstone_14/ui/forgot_password/forgot_password_screen.dart';
import 'package:capstone_14/ui/home/home_page.dart';
import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  // const LoginScreen({super.key});
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  // Email Property
  String _email = "";
  final emailController = TextEditingController();

  // Password Property
  String _password = "";
  bool _isHidePassword = true;
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo-01.png",
                height: 69,
                width: 69,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Text('Sign In',
                    style: GoogleFonts.expletusSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  width: 276,
                  height: 37,
                  child: Text(
                    'It’s nice to see you, please sign in to continue!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color(0xff008284),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 41),
              Container(
                height: 380,
                width: 297,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 8,
                  ),
                ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 40.5,
                    left: 31.5,
                    right: 31.5,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style: GoogleFonts.expletusSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: 234,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: emailController,
                                validator: (value) {
                                  _email = value!;
                                  final bool isEmailValid =
                                      EmailValidator.validate(
                                    emailController.text.trim(),
                                  );
                                  if (_email.isEmpty) {
                                    return "Email wajib diisi";
                                  } else if (!isEmailValid) {
                                    return "Masukkan Email yang benar";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    gapPadding: 10,
                                  ),
                                  hintText: "Enter Your Email",
                                  hintStyle: GoogleFonts.ptSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Password",
                              style: GoogleFonts.expletusSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: 234,
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: passwordController,
                                obscureText: _isHidePassword,
                                validator: (value) {
                                  _password = value!;
                                  if (_password.isEmpty) {
                                    return "Password wajib diisi";
                                  } else if (passwordController.text.length <
                                      8) {
                                    return "Password harus memiliki 8 karakter";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    gapPadding: 10,
                                  ),
                                  hintText: "Enter Your Password",
                                  hintStyle: GoogleFonts.ptSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _isHidePassword = !_isHidePassword;
                                      });
                                    },
                                    child: Icon(
                                      _isHidePassword
                                          ? Icons.remove_red_eye
                                          : Icons.remove_red_eye_outlined,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPasswordscreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "Forgot Password?",
                                style: GoogleFonts.ptSans(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: const Color(0xFF7E0C37),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        ButtonCustome(
                          onPressed: () async {
                            final successLogin = await LoginService().postLogin(
                              context,
                              email: emailController.text,
                              password: passwordController.text,
                            );
                            if (successLogin) {
                              // ignore: use_build_context_synchronously
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      BottomNavBar(currentIndex: 0),
                                ),
                              );
                            } else {
                              setState(() {
                                emailController.clear();
                                passwordController.clear();
                              });
                            }
                          },
                          title: "Sign In",
                          backgroundColour: const Color(0xFF030F51),
                          width: 234,
                          style: GoogleFonts.ptSans(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 18),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Don’t have an account? Create Account",
                            style: GoogleFonts.ptSans(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: const Color(0xFF000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
