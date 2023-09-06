import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NGOLogin extends StatefulWidget {
  const NGOLogin({super.key});

  @override
  State<NGOLogin> createState() => _NGOLoginState();
}

class _NGOLoginState extends State<NGOLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bhukhi.jpg'),
            fit: BoxFit.cover,
          )
      ),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 70),
        body: Center(
          child: Column(
              children:[
                SizedBox(height: 300,
                child: Image.asset('assets/images/helping-hand-icon-8.jpg',height: 100,width: 100,),
                //   child: Icon(Icons.food_bank,
                //     size: 150,
                //     color: Colors.deepOrangeAccent,),
                 ),

                Container(width: 300,
                  child: TextField(
                    style: TextStyle(color: Colors.black,),
                    decoration: InputDecoration(
                        filled: true,
                        hintText: "Email",
                        prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.account_circle)),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Container(width: 300,
                  child: TextField(
                    style: TextStyle(color: Colors.black,),
                    decoration: InputDecoration(
                        filled: true,
                        hintText: "Password",
                        prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.password)),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: (){
                    //TODO FORGOT PASSWORD SCREEN GOES HERE
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
                ),
                SizedBox(height: 30,),
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Login',
                        style: TextStyle(fontSize: 25)),style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,fixedSize: Size(250,75),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                )
                ),
                SizedBox(width: 70,),
                ElevatedButton(
                    onPressed: (){},
                    child: Text('Sign Up',
                        style: TextStyle(fontSize: 15,color: Colors.green)),style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,fixedSize: Size(130,75),)
                )




              ]
          ),
        ),

      ),
    );
  }
}
