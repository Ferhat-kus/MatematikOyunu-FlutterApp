import 'dart:math';
import 'package:flutter/material.dart';

class Carpma extends StatefulWidget {
  const Carpma({Key? key, required this.maxSayi}) : super(key: key);
  final int maxSayi;
  @override
  State<Carpma> createState() => _CarpmaState();
}

class _CarpmaState extends State<Carpma> {
  int sayi1 = 5, sayi2 = 7;
  int dogruButon = 0, carpma = 0;
  int buton1Sayi = 10, buton2Sayi = 20, buton3Sayi = 30;
  int kalanHak = 3;

  @override
  void initState() {
    super.initState();
    kontrol();
  }

  void kalanHakKontrol() {
    if (kalanHak < 1) {
      var alert = const AlertDialog(
        title: Text("Oyun bitti."),
        content: Text("Tüm haklarınız bitti, lütfen tekrar deneyiniz"),
      );

      showDialog(context: context, builder: (BuildContext context) => alert);
    }
  }

  void kontrol() {
    if (kalanHak < 1) {
      kalanHakKontrol();
    } else {
      sayi1 = Random().nextInt(widget.maxSayi);
      sayi2 = Random().nextInt(widget.maxSayi);
      dogruButon = Random().nextInt(3);
      print("doğruButon = $dogruButon");

      carpma = sayi1 * sayi2;

      if (dogruButon == 0) {
        buton1Sayi = carpma;
        buton2Sayi = carpma + 1;
        buton3Sayi = carpma + 2;
      } else if (dogruButon == 1) {
        buton1Sayi = carpma - 1;
        buton2Sayi = carpma;
        buton3Sayi = carpma + 1;
      } else if (dogruButon == 2) {
        buton1Sayi = carpma - 2;
        buton2Sayi = carpma - 1;
        buton3Sayi = carpma;
      }
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Matematik Oyunu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text(
            "Çarpma İşlemi",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
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
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/sayilar/" + sayi1.toString() + ".png",
                        width: 125,
                        height: 300,
                      ),
                      Image.asset(
                        "assets/images/carpma.png",
                        width: 125,
                        height: 300,
                      ),
                      Image.asset(
                        "assets/images/sayilar/" + sayi2.toString() + ".png",
                        width: 125,
                        height: 300,
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                              child: Text(buton1Sayi.toString()),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.orange),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(5)),
                                  textStyle: MaterialStateProperty.all(
                                      const TextStyle(fontSize: 30))),
                              onPressed: () {
                                setState(() {
                                  if (dogruButon == 0) {
                                    kontrol();
                                  } else {
                                    kalanHak = kalanHak - 1;
                                    kalanHakKontrol();
                                  }
                                  if (kalanHak <= 0) {
                                    kalanHak = 0;
                                  }
                                });
                              }),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                              child: Text(buton2Sayi.toString()),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.orange),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(5)),
                                  textStyle: MaterialStateProperty.all(
                                      const TextStyle(fontSize: 30))),
                              onPressed: () {
                                setState(() {
                                  if (dogruButon == 1) {
                                    kontrol();
                                  } else {
                                    kalanHak = kalanHak - 1;
                                    kalanHakKontrol();
                                  }
                                  if (kalanHak <= 0) {
                                    kalanHak = 0;
                                  }
                                });
                              }),
                        ),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ElevatedButton(
                              child: Text(buton3Sayi.toString()),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.orange),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(5)),
                                  textStyle: MaterialStateProperty.all(
                                      const TextStyle(fontSize: 30))),
                              onPressed: () {
                                setState(() {
                                  if (dogruButon == 2) {
                                    kontrol();
                                  } else {
                                    kalanHak = kalanHak - 1;
                                    kalanHakKontrol();
                                  }
                                  if (kalanHak <= 0) {
                                    kalanHak = 0;
                                  }
                                });
                              }),
                        ),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Kalan Hak : ",
                          style:
                              TextStyle(color: Colors.black38, fontSize: 28)),
                      Text(kalanHak.toString(),
                          style:
                              const TextStyle(color: Colors.red, fontSize: 28)),
                    ],
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
