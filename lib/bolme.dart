import 'dart:math';
import 'package:flutter/material.dart';

class Bolme extends StatefulWidget {
  const Bolme({Key? key, required this.maxSayi}) : super(key: key);
  final int maxSayi;
  @override
  State<Bolme> createState() => _BolmeState();
}

class _BolmeState extends State<Bolme> {
  int sayi1 = 5, sayi2 = 7;
  int dogruButon = 0;
  double buton1Sayi = 10, buton2Sayi = 20, buton3Sayi = 30;
  int kalanHak = 3;
  double bolme = 0;
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
      sayi1 = Random().nextInt(10);
      sayi2 = Random().nextInt(10);
      dogruButon = Random().nextInt(3);
      print("doğruButon = $dogruButon");
      if (sayi2 > sayi1) {
        int gecici = sayi1;
        sayi1 = sayi2;
        sayi2 = gecici;
      }
      bolme = sayi1 / sayi2;

      if (dogruButon == 0) {
        buton1Sayi = bolme;
        buton2Sayi = bolme + 1;
        buton3Sayi = bolme + 2;
      } else if (dogruButon == 1) {
        buton1Sayi = bolme - 1;
        buton2Sayi = bolme;
        buton3Sayi = bolme + 1;
      } else if (dogruButon == 2) {
        buton1Sayi = bolme - 2;
        buton2Sayi = bolme - 1;
        buton3Sayi = bolme;
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
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            "Bölme İşlemi",
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
                        "assets/images/bolme.png",
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
