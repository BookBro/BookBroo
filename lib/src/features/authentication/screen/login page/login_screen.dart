import 'package:bookbroo/src/constants/images_strings.dart';
import 'package:bookbroo/src/constants/size.dart';
import 'package:bookbroo/src/constants/text_string.dart';
import 'package:bookbroo/src/features/authentication/screen/Home%20Screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../signup screen/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.fingerprint,
                            ),
                            labelText: "Password",
                            hintText: "Password",
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.remove_red_eye_sharp,
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
        ),
      ),
    );
  }
}
