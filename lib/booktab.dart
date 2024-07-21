import 'package:flutter/material.dart';

//import 'package:flutter/src/services/asset_bundle.dart';
class Booksec extends StatefulWidget {
  const Booksec({super.key});

  @override
  State<Booksec> createState() => _BooksecState();
}

class _BooksecState extends State<Booksec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/book2.jpg'),fit: BoxFit.cover)
            ),
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 90),
                const Text(
                  '   HERE ARE SOME GOOD BOOK:-',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 1200,
                  width: double.maxFinite,
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16)),
                    color: Colors.white.withOpacity(.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 120,
                              width: 81,
                              decoration: BoxDecoration(border: Border.all(width: 3)),
                              child: Image.network('https://image.api.playstation.com/vulcan/ap/rnd/202106/1704/2ZfAUG5CTXdM34S1OhmMW1zF.jpg',fit: BoxFit.cover,),
                            ),

                            const SizedBox(
                              width: 30,
                            ),
                            const Text(
                              'Title: kimetsu no yaiba\nch: 203\nAuthor: XYZ',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                        const Text(
                          '------------------------------------------',
                          style: TextStyle(fontSize: 27, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 120,
                              width: 81,
                              decoration: BoxDecoration(border: Border.all(width: 3)),
                              child: Image.asset('assets/images/amination.jpg', fit: BoxFit.fill,)),
                            const SizedBox(
                              width: 30,
                            ),
                            const Text(
                              'Title: Attack on titan\nch: 700\nAuthor: XYZ',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                        const Text(
                          '------------------------------------------',
                          style: TextStyle(fontSize: 27, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 120,
                              width: 81,
                              decoration: BoxDecoration(border: Border.all(width: 3)),
                              child: Image.network('https://images.justwatch.com/poster/304340004/s332/season-3',fit: BoxFit.cover,),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Text(
                              'Title: One piece\nch: 999+\nAuthor: XYZ',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                        const Text(
                          '------------------------------------------',
                          style: TextStyle(fontSize: 27, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 120,
                              width: 81,
                              decoration: BoxDecoration(border: Border.all(width: 3)),
                              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8f6jhf60Dma1DecpYbbHcxRVstAWz2tohDg&usqp=CAU',fit: BoxFit.cover,),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Text(
                              'Title: what not to do in IIT?\nch: 16\nAuthor: Chetan Bhagat',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                        const Text(
                          '------------------------------------------',
                          style: TextStyle(fontSize: 27, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 120,
                              width: 81,
                              decoration: BoxDecoration(border: Border.all(width: 3)),
                              child: Image.network('https://plus.unsplash.com/premium_photo-1677187301660-5e557d9c0724?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fGJvb2slMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww',fit: BoxFit.cover,),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Text(
                              'Title: Ami Subhash Bolchi\nch: ???\nAuthor: Netaji',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                        const Text(
                          '------------------------------------------',
                          style: TextStyle(fontSize: 27, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 120,
                              width: 81,
                              decoration: BoxDecoration(border: Border.all(width: 3)),
                              child: Image.network('https://m.media-amazon.com/images/I/81YC6O+-qbL._AC_UF1000,1000_QL80_.jpg',fit:BoxFit.cover,),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Text(
                              'Title: bhagavad Gita as it is\nch: 18\nAuthor: Prabhupad',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                        const Text(
                          '------------------------------------------',
                          style: TextStyle(fontSize: 27, color: Colors.black26),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 120,
                              width: 81,
                              decoration: BoxDecoration(border: Border.all(width: 3,color: Colors.white)),
                              child: Image.network('https://images.unsplash.com/photo-1628107628986-60ec506745ec?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHdob3xlbnwwfHwwfHx8MA%3D%3D',fit: BoxFit.cover,),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Text(
                              'Title: ami ke\nch: ???\nAuthor: Manish CM',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
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
