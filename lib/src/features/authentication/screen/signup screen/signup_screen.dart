import 'package:flutter/material.dart';
import 'package:bookbroo/src/constants/size.dart';
import 'package:bookbroo/src/features/authentication/screen/Home%20Screen/home_screen.dart';
import 'package:bookbroo/src/features/authentication/screen/login%20page/login_screen.dart';
import 'package:bookbroo/src/constants/images_strings.dart';
import 'package:bookbroo/src/constants/text_string.dart';

import '../welcome/welcome_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Welcome(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/images/BackButton/backbutton.png",
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // --- Section 1 --- //
                      Image(
                        image: const AssetImage(vWelcomeScreenImage),
                        height: height.height * 0.2,
                      ),
                      const Text(
                        VSignupTittle,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'SuperOcean',
                          fontSize: 30,
                        ),
                      ),
                      const Text(
                        VSignupsubTittle,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'JAi',
                          fontSize: 15,
                        ),
                      ),
                      // --- end ---
                      // --- start ---

                      Form(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: vFormHeight - 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person_outline_outlined,
                                  ),
                                  labelText: "Full Name",
                                  hintText: "Full Name",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: vFormHeight - 20,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                  ),
                                  labelText: "Email",
                                  hintText: "Email",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: vFormHeight - 20,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.phone,
                                  ),
                                  labelText: "Phone No.",
                                  hintText: "Phone No.",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(
                                height: vFormHeight - 20,
                              ),
                              TextFormField(
                                obscureText: _obscurePassword,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.fingerprint,
                                  ),
                                  labelText: "Password",
                                  hintText: "Password",
                                  border: OutlineInputBorder(),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _obscurePassword = !_obscurePassword;
                                      });
                                    },
                                    icon: Icon(
                                      _obscurePassword
                                          ? Icons.visibility_off
                                          : Icons.remove_red_eye,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: vFormHeight - 20,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(),
                                    foregroundColor: Colors.black,
                                    backgroundColor: Colors.black,
                                    side: const BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HomeScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    vSignup.toUpperCase(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    "OR",
                                    // style: TextStyle(height: 3),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: OutlinedButton.icon(
                                      style: OutlinedButton.styleFrom(
                                          shape: const RoundedRectangleBorder(),
                                          side: const BorderSide(
                                            color: Colors.black,
                                          )),
                                      icon: const Image(
                                        image: AssetImage(vGoogleLogo),
                                        width: 20.0,
                                      ),
                                      onPressed: () {},
                                      label: const Text(
                                        vSignInWithGoogle,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginScreen(),
                                        ),
                                      );
                                    },
                                    child: const Text.rich(
                                      style: TextStyle(height: 3),
                                      TextSpan(
                                        text: vAlreadyHaveAnAccount,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: vLogin,
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
