import 'package:flutter/material.dart';
import 'package:fmsa/HotelLogin.dart';
import 'package:fmsa/NGOLogin.dart';

class LoginOption extends StatefulWidget {
  const LoginOption({super.key});

  @override
  State<LoginOption> createState() => _LoginOptionState();
}

class _LoginOptionState extends State<LoginOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [Colors.deepOrange,Colors.orange,Colors.orangeAccent]
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 175,),
              ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => HotelLogin()));}, child: Image.asset('assets/images/hotel-restaurant.jpg'),style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(0, 100, 0, 0),
                  elevation: 50,
                  fixedSize: Size(200, 150),
                  padding: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
              ),

              ),
              SizedBox(height: 80,),
              ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => NGOLogin()));}, child: Image.asset('assets/images/ngob.jpg'),style: ElevatedButton.styleFrom(
                //backgroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(0, 100, 0, 0),
                  elevation: 50,
                  fixedSize: Size(200, 150),
                padding: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
              ),
              ),


            ],


          ),
        ),
      )
    );
  }
}
