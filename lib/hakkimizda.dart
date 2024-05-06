import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Hakkimizda extends StatefulWidget {
  @override
  State<Hakkimizda> createState() => _HakkimizdaState();
}

class _HakkimizdaState extends State<Hakkimizda> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Application name
        title: 'Flutter Hello World',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Geliştirici"),
              centerTitle: true,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black54,
                ),
              ),
            ),
            body: Center(
                child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/ferhatkus.jpg",
                    width: 500,
                    height: 260,
                  ),
                  Container(
                    width: 300,
                    height: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.account_circle),
                            const Text(
                              ":",
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            const Text("Ferhat Kuş",
                                style: TextStyle(
                                  fontSize: 28,
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Instagram:_ferhat_k._",
                                style: TextStyle(
                                  fontSize: 28,
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.phone,
                            ),
                            const Text(
                              ":",
                              style: TextStyle(
                                fontSize: 28,
                              ),
                            ),
                            const Text("05372700415",
                                style: TextStyle(
                                  fontSize: 28,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ))));
  }
}
