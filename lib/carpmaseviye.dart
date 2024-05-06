import 'package:flutter/material.dart';
import 'carpma.dart';

class Carpmaseviye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matematik Oyunu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: TextTheme(),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: const Text("Çarpma Seviye",
              style: TextStyle(color: Colors.white)),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: SafeArea(
            child: Container(
              width: 5000,
              height: 5000,
              decoration: const BoxDecoration(
                color: Colors.white24,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/arkaplan1.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      width: 250,
                      height: 80,
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Carpma(maxSayi: 5)));
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            side: const BorderSide(
                                width: 10.0, color: Colors.green),
                          ),
                          child: const Text('Kolay',
                              style: TextStyle(
                                  color: Colors.green, fontSize: 40))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      width: 250,
                      height: 80,
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Carpma(maxSayi: 11)));
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            side: const BorderSide(
                                width: 10.0, color: Colors.orange),
                          ),
                          child: const Text('Orta',
                              style: TextStyle(
                                  color: Colors.orange, fontSize: 40))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      width: 250,
                      height: 80,
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Carpma(maxSayi: 21)));
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            side: const BorderSide(
                                width: 10.0, color: Colors.red),
                          ),
                          child: const Text('Zor',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 40))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
