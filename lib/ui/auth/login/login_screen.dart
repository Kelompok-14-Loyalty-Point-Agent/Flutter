import 'package:capstone_14/ui/auth/register/register_screen.dart';
import 'package:capstone_14/ui/forgot_password/forgot_password_screen.dart';
import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:capstone_14/widgets/text_field_custome_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Email Property
  String _email = "";
  bool _isEmailValid = true;
  String _errorEmailMessage = "";

  // Password Property
  String _password = "";
  bool _isPasswordValid = true;
  String _errorPasswordMessage = "";
  bool _isHidePassword = true;

  // Button Prorerty
  bool _isButtonUsernameDisable = false;
  bool _isButtonPasswordDisable = false;

  void _validateEmail(String value) {
    _email = value;
    if (_email.isEmpty) {
      _isEmailValid = false;
      _isButtonUsernameDisable = false;

      _errorEmailMessage = "Email Tidak Boleh Kosong!";
    } else {
      _isEmailValid = true;
      _isButtonUsernameDisable = true;
    }
    setState(() {});
  }

  void _validatePassword(String value) {
    _password = value;
    if (_password.isEmpty) {
      _isPasswordValid = false;
      _isButtonPasswordDisable = false;

      _errorPasswordMessage = "Password Tidak Boleh Kosong!";
    } else {
      _isPasswordValid = true;
      _isButtonPasswordDisable = true;
    }
    setState(() {});
  }

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
              height: 365,
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
                child: Column(
                  children: [
                    Column(
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
                    const SizedBox(height: 20),
                    Column(
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
                            obscureText: _isHidePassword,
                            suffixIconWidget: IconButton(
                              onPressed: () {
                                _isHidePassword = !_isHidePassword;
                                setState(() {});
                              },
                              icon: _isHidePassword
                                  ? const Icon(Icons.remove_red_eye)
                                  : const Icon(
                                      Icons.remove_red_eye_outlined,
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
                    const SizedBox(height: 50),
                    ButtonCustome(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
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
          ],
        ),
      ),
    );
  }
}
