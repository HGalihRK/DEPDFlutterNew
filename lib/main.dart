import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mission 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mission 1"),
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.blue,
              Colors.white,
            ],
          )),
        ),
        Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.black,
                  child: Image.asset('assets/img/mainImage.jpg'),
                )),
            Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/img/show1.jpg"))),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/img/show2.jpg"))),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/img/show3.jpeg"))),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/img/show4.jpg"))),
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Container(
                    child: Column(children: [
                  Text(
                    "Selamat Datang di Hotel Translyvia 2",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Text(
                    "Hotel Transylvania is an American animated media franchise created by comedy writer Todd Durham and produced by Sony Pictures Animation. It consists of four feature films, three short films, a flash-animated TV series, and several video games. The series features an ensemble cast, usually led by the voices of Andy Samberg, Selena Gomez, Steve Buscemi, David Spade, Fran Drescher and Molly Shannon among others.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ]))),
          ],
        ),
        Container(
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.heart_broken),
                backgroundColor: Colors.red,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
