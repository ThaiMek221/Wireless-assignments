import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //build widget UI
  @override
  Widget build(BuildContext context){
    var m = MaterialApp(
      title: 'Image demo app',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'image demo'),
    );
    return m;
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
            name: "iPhone",
            description: "iPhone is the stylist phone ever",
            price: 1000,
            image: "assets/appimages/iphone.jpeg"),
          ProductBox(
            name: "Pixel",
            description: "Pixel is the most featureful phone ever",
            price: 800,
            image: "assets/appimages/pixel.png"),
          ProductBox(
            name: "Laptop",
            description: "Laptop is most productive development tool",
            price: 2000,
            image: "assets/appimages/laptop.jpg"),
          ProductBox2(
            name: "Tablet",
            description: "Tablet is the most useful device ever for meeting",
            price: 1500,
            image: "https://p4-ofp.static.pub/fes/cms/2023/03/28/7dch8vg9lz0tzeg74u3x9paoln4o8z319478.png"),
          ProductBox2(
            name: "Pendrive",
            description: "Pendrive is useful storage medium",
            price: 100,
            image: "https://5.imimg.com/data5/HG/HZ/YJ/SELLER-7527235/cruzer-blade-16gb-pen-drive-500x500-500x500.jpg"),
          ProductBox2(
            name: "Floppy Drive",
            description: "Floppy drive is useful rescue storage medium",
            price: 20,
            image: "https://static.javatpoint.com/computer/images/what-is-a-floppy-disk.png"),
        ],
    ));
  }
}

class ProductBox extends StatelessWidget {
 ProductBox({Key? key, required this.name, required this.description, required this.price, required this.image})
 : super(key: key);
 final String name;
 final String description;
 final int price;
 final String image;
 Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
      Image.asset(image),
      Expanded(
      child: Container(
      padding: EdgeInsets.all(5),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
      Text(this.name,
      style: TextStyle(fontWeight:
      FontWeight.bold)),
      Text(this.description),
      Text("Price: " + this.price.toString()),
      ],
      )))
      ])));
 }
}

class ProductBox2 extends StatelessWidget {
 ProductBox2({Key? key, required this.name, required this.description, required this.price, required this.image})
 : super(key: key);
 final String name;
 final String description;
 final int price;
 final String image;
 Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
      Image.network(image),
      Expanded(
      child: Container(
      padding: EdgeInsets.all(5),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
      Text(this.name,
      style: TextStyle(fontWeight:
      FontWeight.bold)),
      Text(this.description),
      Text("Price: " + this.price.toString()),
      ],
      )))
      ])));
 }
}

// class MyHomePage extends StatelessWidget{
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(this.title),
//       ),
//       // body: Center(child: Image.asset('assets/appimages/laptop.png')),
//       body: Center(child: Image.network('https://mahidol.ac.th/temp/2019/06/logo-MU_Color.png')),
//     );
//   }

// }