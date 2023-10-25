import 'package:flutter/material.dart';
import 'package:quizapp/screen.dart';
import 'package:quizapp/splashscreen.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController namectr = TextEditingController();
  TextEditingController passwordctr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 5, 50, 80),
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: Image(image: AssetImage("asset/Quiz_image.jpg")),
              ),
              SizedBox(height: 30,),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 60,
                  child: TextFormField(
                    controller: namectr,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "pls enter a valid mail";
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Enter your mail",
                        // hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 60,
                  child: TextFormField(
                    controller: passwordctr,
                    validator: (value) {
                      if (value!.length < 8 || value.length > 8) {
                        return "At least 8 charecters";
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "password",
                        // hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 220),
                child: Text(
                  "Forget password?",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SplashScreen(),
                )),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 96, 34, 171),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Center(
                      child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
