import 'package:bookbroo/src/constants/images_strings.dart';
import 'package:bookbroo/src/constants/size.dart';
import 'package:bookbroo/src/constants/text_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import '../welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(vBackGroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 500),
                  top: animate ? 150 : 80,
                  left: animate ? 70 : -80,
                  right: animate ? 70 : 80,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 500),
                    opacity: animate ? 1 : 0,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            vAppName,
                            style: TextStyle(
                              fontFamily: 'GellatioRegular',
                              fontSize: 80,
                              letterSpacing: 3,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 300),
                  bottom: animate ? 50 : 120,
                  top: animate ? 120 : 120,
                  left: animate ? 20 : 80,
                  right: animate ? 20 : 80,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: animate ? 1 : 0,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Your Reading Partner',
                        style: TextStyle(
                            fontSize: 23,
                            letterSpacing: 5,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 3),
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 500),
                  bottom: animate ? 10 : 120,
                  left: animate ? 20 : 80,
                  right: animate ? 20 : 80,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: animate ? 1 : 0,
                    child: const Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 40.0),
                        child: Image(
                          image: AssetImage(vbookpages),
                          height: 250,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() => animate = true);
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Welcome()));
  }
}
