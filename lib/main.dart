import 'package:flutter/material.dart';
import 'home.dart';
import 'drawer.dart';
import 'bolmeseviye.dart';
import 'carpmaseviye.dart';
import 'cikarmaseviye.dart';
import 'toplamaseviye.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 2;
  List pages = [
    Toplamaseviye(),
    Cikarmaseviye(),
    MyHomePage(),
    Carpmaseviye(),
    Bolmeseviye(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matematik Oyunu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        appBarTheme: AppBarTheme(
          iconTheme:
              IconThemeData(color: Colors.white),
        ),
      ),
      home: Scaffold(
        drawer: drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Matematik Oyunu",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pink,
        ),
        body: pages[selectedIndex],
        // bottomNavigationBar: NavigationBar(
        //   destinations: const [
        //     NavigationDestination(
        //       label: "Toplama",
        //       icon: Icon(Icons.add),
        //     ),
        //     NavigationDestination(
        //       label: "Çıkarma",
        //       icon: Icon(Icons.remove),
        //     ),
        //     NavigationDestination(
        //       label: "Ana Sayfa",
        //       icon: Icon(Icons.home),
        //     ),
        //     NavigationDestination(
        //       label: "Çarpma",
        //       icon: Icon(Icons.close),
        //     ),
        //     NavigationDestination(
        //       label: "Bölme",
        //       icon: Icon(Icons.percent),
        //     ),
        //   ],
        //   selectedIndex: selectedIndex,
        //   onDestinationSelected: (value) {
        //     setState(() {
        //       selectedIndex = value;
        //     });
        //   },
        //   animationDuration: const Duration(seconds: 70),
        //   backgroundColor: Colors.pink,
        //   height: 60,
        // ),
      ),
    );
  }
}
