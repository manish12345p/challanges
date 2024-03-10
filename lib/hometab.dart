import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  LinearGradient lightTheme =
      const LinearGradient(colors: [Color(0xffe6e9f0), Color(0xffeef1f5)]);
  LinearGradient darkTheme = const LinearGradient(
    colors: [Color.fromRGBO(44, 41, 41, 1), Color.fromARGB(255, 27, 26, 26)],
  );
  LinearGradient? backgroundColor;

  @override
  void initState() {
    super.initState();
    backgroundColor = lightTheme;
  }

  changeTheme() {
    setState(() {
      if (backgroundColor != darkTheme) {
        backgroundColor = darkTheme;
      } else {
        backgroundColor = lightTheme;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: backgroundColor),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 90),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hi,Amy 👋',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: changeTheme,
                    child: const Text(
                      '🌙',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const CategoryWidget(),
              const ProductivityWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Container(
            height: 35,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 190, 185, 185)),
            child: Row(
              children: [
                const SizedBox(
                  width: 3,
                ),
                Container(
                  height: 30,
                  width: 105,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text('All',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  height: 30,
                  width: 105,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text('Male',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  height: 30,
                  width: 105,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text('Fem',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        Row(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [Color(0xfffbc2eb), Color(0xffa6c1ee)],
                ),
              ),
              child: const Center(
                  child: Text(
                'FINANCIAL\nFREEDOM △',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 87, 109, 235),
                ),
              )),
            ),
            const SizedBox(
              width: 28,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [Color(0xfffccb90), Color(0xffd57eeb)],
                ),
              ),
              child: const Center(
                  child: Text(
                'PRODUCTIVITY ◯',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 87, 109, 235),
                ),
              )),
            ),
          ],
        ),
        const SizedBox(
          height: 45,
        ),
        Row(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [Color(0xffffecd2), Color(0xfffcb69f)],
                ),
              ),
              child: const Center(
                  child: Text(
                'FEELING WELL ⬡',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 87, 109, 235),
                ),
              )),
            ),
            const SizedBox(
              width: 28,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [Color(0xfffdfbfb), Color(0xffebedee)],
                ),
              ),
              child: const Center(
                  child: Text(
                'PERSONAL LIFE☆',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 87, 109, 235),
                ),
              )),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}

class ProductivityWidget extends StatelessWidget {
  const ProductivityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Text(
              'PRODUCTIVITY',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 132.49,
            ),
            Text(
              'More ->',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          height: 75,
          width: 328,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Color(0xfffdfbfb), Color(0xffebedee)]),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 11,
              ),
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xff93a5cf), Color(0xffe4efe9)]),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Center(
                  child: Text(
                    '△',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade200),
                  ),
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 11,
                  ),
                  const Text('The Gift',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      )),
                  const SizedBox(
                    height: 1,
                  ),
                  Text('Productivty',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey.shade400,
                      )),
                ],
              ),
              const SizedBox(
                width: 120,
              ),
              Text('Start',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade500,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}