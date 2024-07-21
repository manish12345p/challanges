import 'package:challanges/login.dart';
import 'package:challanges/signin.dart';
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
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
           Color(0xffe6e9f0), Color(0xffeef1f5)
          ]),
        ),
        width: MediaQuery.of(context).size.width,
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children:[
                const SizedBox(height:90,),
                const SizedBox(
                  height: 100,
                  width:100,
                  child: Icon(
                    size: 90,
                    color:Colors.lightBlue,
                    Icons.padding),
                ),
                const SizedBox(height: 100,),
                const Text('Gaming News\n\t\t\t\there it is,',style: TextStyle(fontSize:24,color: Colors.lightBlueAccent, fontWeight: FontWeight.bold),),
                const SizedBox(height: 150,),
                ElevatedButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const SignUp();
                }));}, 
                 style: ElevatedButton.styleFrom(
                  minimumSize: const Size(170,60),
                  backgroundColor: Colors.lightBlue,
                 ),
                 child:const Text('Sign Up',style: TextStyle(color:Colors.white,
                 fontSize: 19) ,),
                 ),
                const SizedBox(height: 15,),
                ElevatedButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const LoginPage();
                }));}, 
                 style: ElevatedButton.styleFrom(
                  minimumSize: const Size(170,60),
                  backgroundColor: Colors.lightBlue,
                 ),
                 child:const Text('Login',style: TextStyle(color:Colors.white,
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