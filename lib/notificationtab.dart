import 'package:flutter/material.dart';

class NotificationTab extends StatefulWidget {
  const NotificationTab({super.key});

  @override
  State<NotificationTab> createState() => _NotificationTab();
}

class _NotificationTab extends State<NotificationTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/guitar girl.jpeg'),
                fit: BoxFit.cover)),
        width: MediaQuery.of(context).size.width,
        height: 800,
        child: Padding(
          padding:  const EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                 const SizedBox(
                  height: 300,
                ),
                Container(
                  height: 442,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius:  const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Colors.white.withOpacity(0.5)),
                  child: Padding(
                    padding:  const EdgeInsets.all(0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 230,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black.withOpacity(.8)),
                            child: Column(
                              children: [
                                 const SizedBox(
                                  height: 20,
                                ),
                                 const Text(
                                  'MATCHED!',
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                 const Text(
                                  'You and Mary matched',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                 const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                     const SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        var snackBar= SnackBar(content: const Text('Not in survice '),action: SnackBarAction(label: 'undo', onPressed: (){}), );
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize:  const Size(60, 30),
                                        backgroundColor: Colors.green,
                                      ),
                                      child:  const Text(
                                        'TEXT NOW',
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.white),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        // non_constant_identifier_names
                                        // ignore: non_constant_identifier_names
                                        var Message= SnackBar(content: const Text('Also Not in survice'),
                                        action:SnackBarAction(label: 'Undo', onPressed: (){}),
                                         );
                                        ScaffoldMessenger.of(context).showSnackBar(Message);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(60, 30),
                                        backgroundColor: Colors.purple,
                                      ),
                                      child:  const Text(
                                        'KEEP LOOKING',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                    ),
                                     const SizedBox(
                                      width: 10,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
