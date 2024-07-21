// ignore_for_file: file_names

import 'package:challanges/login.dart';
import 'package:challanges/signup.dart';
import 'package:flutter/material.dart';
class SLPage extends StatefulWidget {
  const SLPage({super.key});

  @override
  State<SLPage> createState() => _SLPageState();
}

class _SLPageState extends State<SLPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/game6.jpg'),fit: BoxFit.cover,)),
        width: MediaQuery.of(context).size.width,
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children:[
                const SizedBox(height: 290,),
                const Text('Gaming News\n\t\t\t\there it is,',style: TextStyle(fontSize:24,fontStyle:FontStyle.italic,color: Color.fromARGB(255, 235, 38, 23), fontWeight: FontWeight.bold),),
                const SizedBox(height: 150,),
                ElevatedButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const SignUp();
                }));}, 
                 style: ElevatedButton.styleFrom(
                  minimumSize: const Size(170,60),
                  backgroundColor: const Color.fromARGB(255, 78, 8, 3),
                 ),
                 child:const Text('Sign Up',style: TextStyle(color:Color.fromARGB(255, 196, 168, 168),
                 fontSize: 19) ,),
                 ),
                const SizedBox(height: 15,),
                ElevatedButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const LoginPage();
                }));}, 
                 style: ElevatedButton.styleFrom(
                  minimumSize: const Size(170,60),
                  backgroundColor: const Color.fromARGB(255, 78, 8, 3),
                 ),
                 child:const Text('Login',style: TextStyle(color:Color.fromARGB(255, 196, 168, 168),
                 fontSize: 19) ,),
                 ),
                 const SizedBox(height:125,),
              ],
            ),
          ),
          ),
      ),
    );
  }
} 