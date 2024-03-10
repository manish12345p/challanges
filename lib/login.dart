import 'package:challanges/rootpage.dart';
import 'package:challanges/signin.dart';
import 'package:flutter/material.dart';
//import'Login_signin.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff434343),Color(0xff0000)
          ]),
        ),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: SingleChildScrollView(
            child:Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height:270,),
                Container(
                  height: 600,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,),
                  child:Padding(padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Welcome Gamers',style: TextStyle(
                        fontSize: 18,
                        fontWeight:FontWeight.bold ,
                      ),),
                      const Text('gaming news for you!'),
                      const SizedBox(height:60,),
                      TextFormField(
                       decoration: const InputDecoration(
                       labelText: 'Email',
                       prefixIcon:Icon(Icons.email),
                       ),
                      ),
                      const SizedBox(height:25),
                      TextFormField(
                       decoration: const InputDecoration(
                       labelText: 'Password',
                       prefixIcon:Icon(Icons.key),
                       ),
                      ),
                      TextButton(onPressed:() {},
                       child: const Text('Forgot Passward?',style: TextStyle(color: Colors.lightBlue,)),),
                      const SizedBox(height:12,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 85.0),
                        child: ElevatedButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context){
                         return const RootPage();
                         }));}, 
                           style: ElevatedButton.styleFrom(
                           minimumSize: const Size(170,60),
                           backgroundColor: Colors.lightBlue,
                         ),
                         child:const Text('Login',style: TextStyle(color:Colors.white,
                           fontSize: 19) ,),
                                             ),
                      ),
                      const Text('\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t--------or---------'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 85.0),
                        child: ElevatedButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context){
                         return const SignUp();
                         }));}, 
                           style: ElevatedButton.styleFrom(
                           minimumSize: const Size(170,60),
                           backgroundColor: Colors.lightBlue,
                         ),
                         child:const Text('Sign Up',style: TextStyle(color:Colors.white,
                           fontSize: 19) ,),
                                             ),
                      ),
                    ],
                  ),),
                ),
              ],
            ),  
          ),
        ),
      ),
    );
  }
}