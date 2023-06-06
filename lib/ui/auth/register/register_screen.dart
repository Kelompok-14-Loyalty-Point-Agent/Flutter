import 'package:capstone_14/service/auth/register/register_service.dart';
import 'package:capstone_14/ui/auth/login/login_screen.dart';
import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  // Full Name Property
  String _fullName = "";
  final _fullNameController = TextEditingController();

  // Email Property
  String _email = "";
  final _emailController = TextEditingController();

  // Password Property
  String _password = "";
  final _passwordController = TextEditingController();

  // Confirm Password Property
  String _confirmPassword = "";
  final _confirmPasswordController = TextEditingController();

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
                    top: 34,
                    left: 31.5,
                    right: 31.5,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Full Name",
                                style: GoogleFonts.expletusSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  controller: _fullNameController,
                                  validator: (value) {
                                    _fullName = value!;
                                    final capitalized = RegExp(
                                        r"^[A-Z][a-zA-Z]*(\s[A-Z][a-zA-Z]*)*$");
                                    final mustLetter = RegExp(r'^[a-zA-Z\s]+$');
                                    if (_fullName.isEmpty) {
                                      return "Nama lengkap wajib diisi";
                                    } else if (_fullName.length <= 2) {
                                      return "Nama anda harus memiliki 2 kata";
                                    } else if (!mustLetter
                                        .hasMatch(_fullName)) {
                                      return "Nama harus berisi huruf";
                                    } else if (!capitalized
                                        .hasMatch(_fullName)) {
                                      return "Huruf pertama harus kapital";
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
                                    hintText: "Enter Your Full Name",
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
                          padding: const EdgeInsets.only(top: 18),
                          child: Column(
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
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _emailController,
                                  validator: (value) {
                                    _email = value!;
                                    final bool isEmailValid =
                                        EmailValidator.validate(
                                      _emailController.text.trim(),
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Column(
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
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _passwordController,
                                  validator: (value) {
                                    _password = value!;
                                    if (_password.isEmpty) {
                                      return "Password wajib diisi";
                                    } else if (_passwordController.text.length <
                                        8) {
                                      return "Password harus memiliki 8 karakter";
                                    } else if (_passwordController
                                            .text !=
                                        _confirmPasswordController.text) {
                                      return "Password tidak sesuai";
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
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Confirm Password",
                                style: GoogleFonts.expletusSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _confirmPasswordController,
                                  validator: (value) {
                                    _confirmPassword = value!;
                                    if (_confirmPassword.isEmpty) {
                                      return "Password wajib diisi";
                                    } else if (_confirmPasswordController
                                            .text.length <
                                        8) {
                                      return "Password harus memiliki 8 karakter";
                                    } else if (_confirmPasswordController
                                            .text !=
                                        _passwordController.text) {
                                      return "Confirm Password tidak sesuai";
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
                                    hintText: "Confirm Your Password",
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
                        const SizedBox(height: 50),
                        ButtonCustome(
                          onPressed: () async {
                            final successRegister =
                                await RegisterService().postRegister(
                              context,
                              email: _emailController.text,
                              name: _fullNameController.text,
                              password: _passwordController.text =
                                  _confirmPasswordController.text,
                            );

                            if (successRegister) {
                              // ignore: use_build_context_synchronously
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            } else {
                              setState(() {
                                _fullNameController.clear();
                                _emailController.clear();
                                _passwordController.clear();
                                _confirmPasswordController.clear();
                              });
                            }
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
                        const SizedBox(height: 4),
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
