import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fmsa/HotelLogin.dart';
import 'package:fmsa/screens/LoginOption.dart';

void main(){
  runApp(Home());

}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
                image: AssetImage('assets/gifs/bowl.gif'),
                fit: BoxFit.cover
          )
        ),
        child: AnimatedSplashScreen(
          duration:5000,
          splash:Image.asset('assets/gifs/extrafood.gif',),
          splashIconSize: 250,
          nextScreen: LoginOption(),
          //splashTransition: SplashTransition.rotationTransition,
          backgroundColor: Colors.transparent,
        ),
      ),
      debugShowCheckedModeBanner:(false),

    );
  }
}
