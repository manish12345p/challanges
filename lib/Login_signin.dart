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
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff434343),Color(0xff0000)
          ]),
        ),
        width: MediaQuery.of(context).size.width,
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children:[
                SizedBox(height:90,),
                Container(
                  height: 100,
                  width:100,
                  child: Icon(
                    size: 90,
                    color:Colors.lightBlue,
                    Icons.padding),
                ),
                SizedBox(height: 100,),
                Text('Gaming News\n\t\t\t\there it is,',style: TextStyle(fontSize:24,color: Colors.lightBlueAccent, fontWeight: FontWeight.bold),),
                SizedBox(height: 150,),
                ElevatedButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignUp();
                }));},
                 child:Text('Sign Up',style: TextStyle(color:Colors.white,
                 fontSize: 19) ,), 
                 style: ElevatedButton.styleFrom(
                  minimumSize: Size(170,60),
                  backgroundColor: Colors.lightBlue,
                 ),
                 ),
                SizedBox(height: 15,),
                ElevatedButton(onPressed:() {Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LoginPage();
                }));},
                 child:Text('Login',style: TextStyle(color:Colors.white,
                 fontSize: 19) ,), 
                 style: ElevatedButton.styleFrom(
                  minimumSize: Size(170,60),
                  backgroundColor: Colors.lightBlue,
                 ),
                 ),
                 SizedBox(height:125,),
              ],
            ),
          ),
          ),
      ),
    );
  }
} 