import 'package:challanges/rootpage.dart';
import 'package:challanges/signup.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import'Login_signin.dart';


//ATOM ONE DARK THEME
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double initial=0.0;
  
  var passtext=TextEditingController();
  var emailtext=TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/game6.jpg'),fit: BoxFit.cover,)
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
                  color: Colors.white.withOpacity(0.9),),
                  child:Padding(padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 10,
                          width: 70,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
                          child: LinearProgressIndicator(borderRadius: BorderRadius.circular(10),backgroundColor: Colors.grey,color: Colors.indigo,value: initial,),
                        ),
                      ),
                      const Text('Welcome Gamers',style: TextStyle(
                        fontSize: 18,
                        fontWeight:FontWeight.bold ,
                      ),),
                      const Text('gaming news for you!'),
                      const SizedBox(height:60,),
                      TextFormField(
                        onTap: () {
                          initial=initial+0.5;
                        },
                       controller: emailtext,
                       showCursor: false,
                       decoration: const InputDecoration(
                       hintText: 'Email',
                       border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)),),
                       prefixIcon:Icon(Icons.email),
                       ),
                      ),
                      const SizedBox(height:25),
                      TextFormField(
                        onTap: () {
                          initial=initial+0.5;
                        },
                       controller:passtext ,
                       obscureText: true,
                       obscuringCharacter: '*',
                       showCursor: false,
                       decoration: const InputDecoration(
                       hintText: 'Passward',
                       border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                       prefixIcon:Icon(Icons.key),
                       ),
                      ),
                      TextButton(onPressed:() {},
                       child: const Text('Forgot Passward?',style: TextStyle(color: Colors.lightBlue,)),),
                      const SizedBox(height:12,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 85.0),
                        child: ElevatedButton(onPressed:()async {
                          SharedPreferences prefs=await SharedPreferences.getInstance();
                          prefs.setBool('islogged', true);
                        
                          String uEmail= emailtext.text.toString();
                          String uPass= passtext.text;
                          // ignore: avoid_print
                          print('Email:$uEmail,Passward:$uPass ${prefs.getBool('islogged')}');
                          // ignore: use_build_context_synchronously
                          Navigator.push(context, MaterialPageRoute(builder: (context){
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