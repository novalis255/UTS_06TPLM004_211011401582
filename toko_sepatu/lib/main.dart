import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoesList(),
    );
  }
}

class ShoesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/profile.jpg'),
              radius: 25, // Modify the radius to make it slightly larger
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Item(
            color: const Color.fromARGB(255, 218, 135, 233),
            nama: 'Nike SB Zoom Blazer',
            desk: 'Mid Premium',
            harga: 'Rp. 28,795,-',
            pict: 'images/Nike-Air-removebg.png',
          ),
          Item(
            color: Color.fromARGB(255, 146, 223, 241),
            nama: 'Nike Air Zoom Pegasus',
            desk: "Men's Rood Running Shoes",
            harga: 'Rp. 29,995,-',
            pict: 'images/Nike-SB-Blazer.png',
          ),
          Item(
              color: Color.fromARGB(255, 255, 193, 193),
              nama: 'Nike ZoomX Vaporfly',
              desk: "Men's Road Racing Shoe",
              harga: '219,695',
              pict: 'images/Nike-ZoomX.png'),
          Item(
              color: const Color.fromARGB(255, 205, 198, 198),
              nama: 'Nike Air Force 1 S50',
              desk: "Older Kids' Shoe",
              harga: '26,295',
              pict: 'images/Nike-Air-Force.png'),
          Item(
            color: Color.fromARGB(255, 245, 236, 157),
            nama: 'Nike Waffle One',
            desk: "Men's Shoes",
            harga: '28,295',
            pict: 'images/Nike-Waffle-One.png',
          ),
        ],
      ),
    );
  }

  Widget Item({
    required Color color,
    required String nama,
    required String desk,
    required String harga,
    required String pict,
  }) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Align elements to the right
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    desk,
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    harga,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(width: 50),
            Image(
              image: AssetImage(pict),
              width: 200,
              height: 150,
            )
          ],
        ),
      ),
    );
  }
}
