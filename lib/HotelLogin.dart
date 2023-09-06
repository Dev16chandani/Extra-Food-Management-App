// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:fmsa/thirdpage.dart';
// import 'package:alert_dialog_box/alert_dialog_box.dart';
//
// class HotelLogin extends StatefulWidget {
//   const HotelLogin({super.key});
//   @override
//   State<HotelLogin> createState() => _HotelLoginState();
// }
//
// class _HotelLoginState extends State<HotelLogin> {
//
//   TextEditingController _email = TextEditingController();
//   TextEditingController _password = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('assets/images/Food 3.avif'),
//         //image: AssetImage('assets/images/food-on-table.jpg'),
//     fit: BoxFit.cover,
//     ),),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//           body:Padding(
//             padding: EdgeInsets.only(top: 20,left: 20,right: 20,
//                 bottom: MediaQuery.of(context).viewInsets.bottom),
//             child: Container(
//               width: double.infinity,
//               // decoration: BoxDecoration(
//               //   image: DecorationImage(
//               //       image: AssetImage('assets/images/food-on-table.jpg'),
//               //       fit: BoxFit.cover,
//               //   ),
//                   // gradient: LinearGradient(
//                   //     begin: Alignment.topCenter,
//                   //     colors: [Colors.deepOrange,Colors.orange,Colors.orangeAccent],
//                   //     //colors: [Colors.redAccent,Colors.deepPurpleAccent,Colors.lightBlue]
//                   // )
//
//               child:Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children:[
//                     SizedBox(height:50,),
//                     Padding(
//                         padding: EdgeInsets.all(20),
//                         child:Column(
//                           children: [
//                             SizedBox(height: 40,)
//                             // Text("Login",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
//                             // SizedBox(height:20),
//                             // Text("Welcome Back",style: TextStyle(color: Colors.white,fontSize: 20,),)
//                           ],
//                         )
//                     ),
//                     Expanded(child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.only(topLeft: Radius.elliptical(200, 100),topRight: Radius.elliptical(200, 0),bottomLeft: Radius.elliptical(200, 100))
//                           //borderRadius: BorderRadius.circular(60),
//                           //borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60),bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60))
//                       ),
//                       child: Padding(padding: EdgeInsets.all(20),
//                         child: Column(
//                           children: [
//                             SizedBox(height:35,),
//                             Container(
//                                 padding:EdgeInsets.all(20),
//                                 decoration:BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius:BorderRadius.circular(20),
//                                     boxShadow:[
//                                       BoxShadow(
//                                       color:Colors.deepPurpleAccent,
//                                       blurRadius:20,
//                                       offset: Offset(0,10),
//                                       )
//                                     ]
//                                 ),
//                                 child:Column(
//                                   children:[
//                                     Container(
//                                       padding: EdgeInsets.all(10),
//                                       decoration: BoxDecoration(
//                                           border: Border(bottom: BorderSide(color: Colors.blueGrey))
//                                       ),
//                                       child: TextField(controller:_email,
//                                         decoration: InputDecoration(
//                                             labelText: "Email",
//                                             labelStyle: TextStyle(color: Colors.grey),
//                                             border: InputBorder.none
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       padding: EdgeInsets.all(10),
//                                       decoration: BoxDecoration(
//                                           border: Border(bottom: BorderSide(color: Colors.blueGrey))
//                                       ),
//                                       child: TextField(controller: _password,
//                                         decoration: InputDecoration(
//                                             labelText: "Password",
//                                             labelStyle: TextStyle(color: Colors.grey),
//                                             border: InputBorder.none
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//
//                                 )
//
//                             ),
//                             SizedBox(height: 40,),
//                             Container(
//                               height: 50,
//                               width:200,
//                               margin: EdgeInsets.symmetric(horizontal: 50),
//                               /*decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(50),
//                              color: Colors.orange[900]
//                          ),*/
//                               child: Center(
//                                 child: ElevatedButton(onPressed: (){
//                                   FirebaseAuth.instance.signInWithEmailAndPassword(
//                                       email: _email.text, password: _password.text).then((value){Navigator.push(context,MaterialPageRoute(builder: (context) => ThirdPage()));}).onError((error, stackTrace){print(error);});}, child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),style:ElevatedButton.styleFrom(
//                                 backgroundColor: Colors.black,fixedSize: Size(400, 200),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),
//                                 )
//                                 )
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 30,),
//                             Container(
//                               height: 50,
//                               width:200,
//                               margin: EdgeInsets.symmetric(horizontal: 50),
//                               /*decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(50),
//                              color: Colors.orange[900]
//                          ),*/
//                               child: Center(
//                                 child: ElevatedButton(onPressed: (){
//                                   FirebaseAuth.instance.createUserWithEmailAndPassword(
//                                       email: _email.text, password: _password.text).then((value){
//                                     CustomAlertDialog.showCustomAlertBox(
//                                         context: context,
//                                         willDisplayWidget: Container(
//                                           margin: const EdgeInsets.all(2.0),
//                                           child:Icon(Icons.confirmation_number_sharp) /*const Text('My custom alert box, used from example!!')*/,
//                                         )
//                                     );
//                                   }).onError((error, stackTrace){print(error);});}, child: Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),style:ElevatedButton.styleFrom(
//                                     backgroundColor: Colors.black,fixedSize: Size(400, 200),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),
//                                 )
//                                 )
//                                 ),
//                               ),
//                             ),
//
//
//                           ],
//                         ),
//                       ),
//
//                     ))
//                   ]
//               ),
//
//             ),
//           ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HotelLogin extends StatefulWidget {
  const HotelLogin({super.key});

  @override
  State<HotelLogin> createState() => _HotelLoginState();
}

class _HotelLoginState extends State<HotelLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/Food 3.avif'),
          fit: BoxFit.cover,
        )
      ),
      child: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 50),
        body: Center(
          child: Column(
            children:[
              SizedBox(height: 300,
                child: Icon(Icons.food_bank,
                size: 150,
                color: Colors.deepOrangeAccent,),
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




