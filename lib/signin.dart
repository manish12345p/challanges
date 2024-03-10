import 'package:challanges/rootpage.dart';
import 'package:challanges/login.dart';
import'package:flutter/material.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
          padding:EdgeInsets.zero,
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(height:270,),
                Container(
                  height: 800,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,),
                  child: Padding(padding: const EdgeInsets.all(16.0,),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Create an Account',style: TextStyle(
                        fontSize: 18,
                        fontWeight:FontWeight.bold ,
                      ),),
                      const Text('gaming news for you!'),
                      const SizedBox(height:40,),
                      TextFormField(
                       decoration: const InputDecoration(
                       labelText: 'Name',
                       prefixIcon:Icon(Icons.person),
                       ),
                      ),
                      const SizedBox(height:25),
                      TextFormField(
                       decoration: const InputDecoration(
                       labelText: 'Email',
                       prefixIcon:Icon(Icons.email),
                       ),
                      ),
                      const SizedBox(height:25),
                      TextFormField(
                       decoration: const InputDecoration(
                       labelText: 'Phone Number',
                       prefixIcon:Icon(Icons.phone),
                       ),
                      ),
                      const SizedBox(height:25),
                      TextFormField(
                       decoration: const InputDecoration(
                       labelText: 'password',
                       prefixIcon:Icon(Icons.lock),
                       ),
                      ),
                      const SizedBox(height:25,),
                      Padding(padding:const EdgeInsets.symmetric(horizontal:85.0,),
                      child: ElevatedButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context){
                       return RootPage();
                       }));}, 
                        style: ElevatedButton.styleFrom(
                        minimumSize: const Size(170,60),
                        backgroundColor: Colors.lightBlue,
                       ),
                       child:const Text('Sign Up',style: TextStyle(color:Colors.white,
                        fontSize: 19) ,),
                     ),),
                     Container(
                      child: Row(children: [
                        const Text('\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\talready have an account?'),
                        TextButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context){
                       return const LoginPage();
                       }));},
                       child: const Text('Log In',style: TextStyle(color: Colors.lightBlue),))
                      ]),
                     ),
                     Container(
                      child: Row(
                        children: [
                          ElevatedButton(onPressed:() {}, 
                          style: ElevatedButton.styleFrom(
                          minimumSize: const Size(160,30),
                          backgroundColor: Colors.white,
                          ),
                          child:const Text('Google',style: TextStyle(
                           fontSize: 16) ,),
                          ),
                          const SizedBox(width:8,),
                          ElevatedButton(onPressed:() {}, 
                          style: ElevatedButton.styleFrom(
                          minimumSize: const Size(160,30),
                          backgroundColor: Colors.white,
                          ),
                          child:const Text('Twetter',style: TextStyle(
                           fontSize: 16) ,),
                          ),
                        ],
                      ),
                     )
                  ],),
                  ),
                ),
            ]),
          ),
          ),
    ),
    );
  }
}