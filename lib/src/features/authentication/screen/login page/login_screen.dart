import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/images_strings.dart';
import '../../../../constants/size.dart';
import '../../../../constants/text_string.dart';
import '../Home Screen/home_screen.dart';
import '../signup screen/signup_screen.dart';
import '../welcome/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --- Section 1 --- //
                  Image(
                    image: AssetImage(vWelcomeScreenImage),
                    height: height.height * 0.2,
                  ),
                  const Text(
                    vLoginTittle,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'SuperOcean',
                      fontSize: 30,
                    ),
                  ),
                  const Text(
                    vLoginSubTittle,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'JAi',
                      fontSize: 15,
                    ),
                  ),
                  // --- End Section 1 --- //

                  // --- Section 2 --- //

                  Form(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: vFormHeight - 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.person_outline_outlined,
                              ),
                              labelText: "Email",
                              hintText: "Email",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: vFormHeight,
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
                                      ? Icons.remove_red_eye_sharp
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: vFormHeight - 20,
                          ),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: null,
                              child: Text("Forget Password"),
                            ),
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
                                vLogin.toUpperCase(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "OR",
                        // style: TextStyle(height: 3),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(),
                              side: BorderSide(
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
                        height: vFormHeight - 20,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        },
                        child: const Text.rich(
                          style: TextStyle(height: 5),
                          TextSpan(
                            text: vDontHaveAnAccount,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                text: vSignup,
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
          ],
        ),
      ),
    );
  }
}
