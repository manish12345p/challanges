import 'package:challanges/rootpage.dart';
import 'package:challanges/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var name = TextEditingController();
  var email = TextEditingController();
  // ignore: non_constant_identifier_names
  var phone_no = TextEditingController();
  // ignore: non_constant_identifier_names
  var Passward = TextEditingController();
  TextEditingController date = TextEditingController();
  double initial = 0.0;
  bool? check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/game6.jpg'),
          fit: BoxFit.cover,
        )),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.zero,
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 270,
              ),
              Container(
                height: 1000,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white.withOpacity(.9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(
                    16.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 10,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          child: LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(10),
                            backgroundColor: Colors.grey,
                            color: Colors.indigo,
                            value: initial,
                          ),
                        ),
                      ),
                      const Text(
                        'Create an Account',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text('gaming news for you!'),
                      const SizedBox(
                        height: 40,
                      ),
                      TextFormField(
                        onTap: () {
                          initial = initial + 0.2;
                        },
                        keyboardType: TextInputType.name,
                        controller: name,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          labelText: 'Name',
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      const SizedBox(height: 25),
                      TextFormField(
                        onTap: () {
                          initial = initial + 0.2;
                        },
                        keyboardType: TextInputType.emailAddress,
                        controller: email,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      const SizedBox(height: 25),
                      TextFormField(
                        controller: date,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            prefixIcon: Icon(Icons.calendar_today),
                            hintText: 'Select date'),
                        onTap: () async {
                          initial = initial + 0.2;
                          DateTime? pickeddate = await showDatePicker(
                              context: context,
                              firstDate: DateTime(DateTime.now().year - 70),
                              lastDate: DateTime(DateTime.now().year - 5));
                          if (pickeddate != null) {
                            setState(() {});
                          }
                        },
                      ),
                      const SizedBox(height: 25),
                      TextFormField(
                        onTap: () {
                          initial = initial + 0.2;
                        },
                        keyboardType: TextInputType.phone,
                        controller: phone_no,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          labelText: 'Phone Number',
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),
                      const SizedBox(height: 25),
                      TextFormField(
                        onTap: () {
                          initial = initial + 0.2;
                        },
                        controller: Passward,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          labelText: 'password',
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: check,
                              onChanged: (_) {
                                setState(() {
                                  check = _;
                                });
                              }),
                          const Text('I have read the terms & conditions')
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return SingleChildScrollView(
                                child: AlertDialog(
                                  title: const Text(
                                    '''\t\tTerms & Condition\n\n● Unlawful or promoting unlawful activity.\n\n● Defamatory, discriminatory, or mean-spirited content, including references or commentary about religion, race, sexual orientation, gender, national/ethnic origin, or other targeted groups.\n\n● Spam, machine - or randomly - generated, constituting unauthorized or unsolicited advertising,chain letters, any other form of unauthorized solicitation, or any form of lottery or gambling.\n\n● Containing or installing any viruses, worms, malware, trojan horses, or other content that is designed or intended to disrupt, damage, or limit the functioning of any software, hardware or telecommunications equipment or to damage or obtain unauthorizedaccess to any data or other information of a third person.\n\n● Infringing on any proprietary rights of any party, including patent, trademark, trade secret, copyright,right of publicity or other rights.\n\n● Impersonating any person or entity including the Company and its employees or representatives.\n\n● Violating the privacy of any third person.\n\n● False information and features.''',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('OK'),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: const Text('terms and conditions'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 85.0,
                        ),
                        child: ElevatedButton(
                          onPressed: (check == true && initial >= 1.0)
                              ? () {
                                  String uName = name.text.toString();
                                  String uEmail = email.text.toString();
                                  String uphone = phone_no.text.toString();
                                  String uPass = Passward.text.toString();
                                  // ignore: avoid_print
                                  print(
                                      'Name: $uName,\nEmail: $uEmail,\nPassward: $uPass,\nPhone no.: $uphone');
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text(
                                            'CONGRATULATION\n\taccount created'),
                                        actions: <Widget>[
                                          TextButton(
                                              onPressed: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return const RootPage();
                                                }));
                                              },
                                              child: const Text('Ok'))
                                        ],
                                      );
                                    },
                                  );
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(170, 60),
                            backgroundColor: Colors.lightBlue,
                          ),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                        ),
                      ),
                      Row(children: [
                        const Text(
                            '\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\talready have an account?'),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const LoginPage();
                              }));
                            },
                            child: const Text(
                              'Log In',
                              style: TextStyle(color: Colors.lightBlue),
                            ))
                      ]),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(160, 30),
                              backgroundColor: Colors.white,
                            ),
                            child: const Text(
                              'Google',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(160, 30),
                              backgroundColor: Colors.white,
                            ),
                            child: const Text(
                              'Twetter',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
