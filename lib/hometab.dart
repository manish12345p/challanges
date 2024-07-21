import 'package:flutter/cupertino.dart';
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
  // double initial=0.0;
  // void update(){
  //   Timer.periodic(const Duration(milliseconds: 100), (timer) {
  //     setState(() {
  //       initial=initial + 0.05;
  //     });
  //    });
  // }
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
              const SizedBox(
                height: 42,
              ),
              const SizedBox(
                height: 20,
              ),
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
                    child: const Icon(
                      Icons.brightness_4_rounded,
                      size: 30,
                    ),
                  ),
                ],
              ),
              CategoryWidget(),
              const ProductivityWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    super.key,
  });

  int? _sliding = 0;
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
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 190, 185, 185)),
            child: CupertinoSlidingSegmentedControl(
              children:  const {
                0: Text('All'),
                1: Text('male'),
                2: Text('Female'),
              },
              groupValue: _sliding,
              onValueChanged: (int? newValue) {
                // setState(() {
                  _sliding = newValue;
                // });
              },
            ),
          ),
        ),
        const SizedBox(
          height: 45,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 3, color: Colors.purple),
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
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 3, color: Colors.orangeAccent),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 3, color: Colors.lime),
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
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 3, color: Colors.blueGrey),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'PRODUCTIVITY',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
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
          width: double.maxFinite,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xfffdfbfb), Color(0xffebedee)]),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 3, color: Colors.grey)),
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
                    border: Border.all(color: Colors.blue)),
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
        const SizedBox(
          height: 3,
        )
      ],
    );
  }
}
