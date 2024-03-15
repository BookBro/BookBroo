import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bookbroo/src/constants/images_strings.dart';
import 'package:bookbroo/src/constants/size.dart';
import 'package:bookbroo/src/constants/text_string.dart';
import '../login page/login_screen.dart';
import '../signup screen/signup_screen.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                // Navigate back to previous screen
                Navigator.pop(context);
              },
              child: Image(
                image: AssetImage(vWelcomeScreenImage),
                height: height * 0.5,
              ),
            ),
            const Column(
              children: [
                Text(
                  vWelcomeTittle,
                  style: TextStyle(
                    fontFamily: 'SuperOcean',
                    fontSize: 30,
                  ),
                ),
                Text(
                  vWelcomeSubTittle,
                  style: TextStyle(
                    fontFamily: 'JAi',
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: Colors.black,
                      side: BorderSide(
                        color: Colors.black,
                      ),
                      padding: EdgeInsets.symmetric(vertical: vButtonHeight),
                    ),
                    child: Text(
                      vLogin.toUpperCase(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      elevation: 20,
                      shape: RoundedRectangleBorder(),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      side: const BorderSide(
                        color: Colors.black,
                      ),
                      padding: EdgeInsets.symmetric(vertical: vButtonHeight),
                    ),
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
