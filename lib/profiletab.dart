import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text(
          'Dakota',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [Icon(Icons.more_vert)],
        automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/worker3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(30)),
                      border: Border.all(),
                      color: Colors.white),
                  child: const Text(
                    'SHE/HER',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 300,
                ),
                Container(
                  height: 322,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 218, 241, 191)
                          .withOpacity(.8)),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 1,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(80, 30),
                              backgroundColor: Colors.purple,
                            ),
                            child: const Text(
                              'PYTHON',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(80, 30),
                              backgroundColor: Colors.purple,
                            ),
                            child: const Text(
                              'MYSQL',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(80, 30),
                              backgroundColor: Colors.purple,
                            ),
                            child: const Text(
                              'RUBY',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 1,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(60, 30),
                              backgroundColor: Colors.purple,
                            ),
                            child: const Text(
                              'PHP',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(80, 30),
                              backgroundColor: Colors.purple,
                            ),
                            child: const Text(
                              'JAVA',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(30, 30),
                              backgroundColor: Colors.purple,
                            ),
                            child: const Text(
                              'C#',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Container(
                          color: Colors.white,
                          height: 212,
                          width: double.maxFinite,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                const Text(
                                  'BACK END DEVELOPER(4 YEARS)',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Row(
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: Icon(
                                          size: 40,
                                          color: Colors.black,
                                          Icons.cake),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '26 Y.O.',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Row(
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: Icon(
                                          size: 40,
                                          color: Colors.black,
                                          Icons.school),
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      'HIGHER EDUCATION IN THE\nFIELD OF INFORMATON TECHNOLOGY',
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 42,
                                      width: 42,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 2),
                                          borderRadius:
                                              BorderRadius.circular(21),
                                          color: Colors.white),
                                      child: const Icon(
                                        Icons.close,
                                        size: 40,
                                      ),
                                    ),
                                    Container(
                                      height: 42,
                                      width: 42,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 2),
                                          borderRadius:
                                              BorderRadius.circular(21),
                                          color: Colors.white),
                                      child: const Icon(
                                        Icons.favorite,
                                        size: 36,
                                        color: Colors.red,
                                      ),
                                    ),
                                    // SizedBox(
                                    //   height: 42,
                                    //   width: 42,
                                    //   child: Icon(Icons.close,size: 40,),
                                    // ),
                                    // SizedBox(
                                    //   height:42,
                                    //   width:42,
                                    //   child: Icon(Icons.favorite,color: Colors.red,size: 40,),
                                    // ),
                                  ],
                                )
                              ],
                            ),
                          ))
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
