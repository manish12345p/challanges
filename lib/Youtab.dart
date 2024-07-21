// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class YouTab extends StatefulWidget {
  const YouTab({super.key});

  @override
  State<YouTab> createState() => _YouTabState();
}

class _YouTabState extends State<YouTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SETTINGS',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade300,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/catgirl2.jpg'),
                  fit: BoxFit.cover,
                )),
                height: 648,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(),
                              color: Colors.white.withOpacity(0.8)),
                          child: const Icon(
                            Icons.camera_alt_rounded,
                            size: 35,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 220,
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 348,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: const Color.fromARGB(255, 184, 238, 202)
                              .withOpacity(.8)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            'Judy,22',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 116, 102, 102)),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            'ANIMAL CARE EMPLOYEE',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 116, 102, 102)),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        255, 116, 102, 102)),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'EDIT PROFILE',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 116, 102, 102)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        255, 116, 102, 102)),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'PREFERENCES',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 116, 102, 102)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 3,
                                    color: const Color.fromARGB(
                                        255, 116, 102, 102)),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'ACCOUNT',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 116, 102, 102)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 120),
              child: Container(
                height: 30,
                width: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.purple),
                child: const Center(
                  child: Text(
                    '75% Discount',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
