import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quizapp/screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splash();
  }
  splash() async {
    Future.delayed(
      Duration(seconds: 4,),
      () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => QuizScreen(),
        ));
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 280,
              // height: 150,
              child:LottieBuilder.asset("asset/Quiz_lottie.json",fit: BoxFit.fill,),
            ),
          )
        ],
      ),
    );
  }
}