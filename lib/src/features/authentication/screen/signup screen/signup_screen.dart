import 'package:bookbroo/src/constants/size.dart';
import 'package:bookbroo/src/features/authentication/screen/login%20page/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../constants/images_strings.dart';
import '../../../../constants/text_string.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(vDefaultSize),
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
                    padding:
                        const EdgeInsets.symmetric(vertical: vFormHeight - 10),
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
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.fingerprint,
                            ),
                            labelText: "Password",
                            hintText: "Password",
                            border: OutlineInputBorder(),
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
                            onPressed: () {},
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
                                style: TextStyle(height: 5),
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
    );
  }
}
