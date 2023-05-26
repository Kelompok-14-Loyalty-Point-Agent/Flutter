import 'package:capstone_14/ui/forgot_password/forgot_password_screen.dart';
import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:capstone_14/widgets/text_field_custome_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // Full Name Property
  final String _fullName = "";
  final bool _isFullNameValid = true;
  final String _errorFullNameMessage = "";

  // Email Property
  final String _email = "";
  final bool _isEmailValid = true;
  final String _errorEmailMessage = "";

  // Password Property
  final String _password = "";
  final bool _isPasswordValid = true;
  final String _errorPasswordMessage = "";

  // Confirm Password Property
  final String _confirmPassword = "";
  final bool _isConfirmPasswordValid = true;
  final String _errorConfirmPasswordMessage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
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
              child: Text('Sign Up',
                  style: GoogleFonts.expletusSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            const SizedBox(height: 30),
            Container(
              height: 543,
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
                  top: 52,
                  left: 31.5,
                  right: 31.5,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: TextFieldCustome(
                              title: 'Full Name',
                              isValidTextField: _isFullNameValid,
                              errorMessage: _errorFullNameMessage,
                              hintText: 'Enter Your Full Name',
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.ptSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: TextFieldCustome(
                              title: 'Email',
                              isValidTextField: _isEmailValid,
                              errorMessage: _errorEmailMessage,
                              hintText: 'Enter Your Email',
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.ptSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: TextFieldCustome(
                              title: 'Password',
                              isValidTextField: _isPasswordValid,
                              errorMessage: _errorPasswordMessage,
                              hintText: 'Enter Your Password',
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.ptSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: TextFieldCustome(
                              title: 'Confirm Password',
                              isValidTextField: _isConfirmPasswordValid,
                              errorMessage: _errorConfirmPasswordMessage,
                              hintText: 'Confirm Your Password',
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.ptSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 63),
                    ButtonCustome(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      title: "Create an Account",
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
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "already have an account? Sign In",
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
          ],
        ),
      ),
    );
  }
}
