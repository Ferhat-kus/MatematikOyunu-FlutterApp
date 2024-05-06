import 'package:flutter/material.dart';
import 'toplamaseviye.dart';
import 'cikarmaseviye.dart';
import 'carpmaseviye.dart';
import 'bolmeseviye.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                "assets/images/arkaplan.png",
                width: 400,
                height: 260,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //TOPLAMA
                SizedBox(
                  width: 150,
                  height: 80,
                  child: ElevatedButton(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Toplama',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(5),
                      ),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 30, color: Colors.white),
                      ), // Changed text color to white
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Toplamaseviye(),
                        ),
                      );
                    },
                  ),
                ),
                //ÇIKARMA
                SizedBox(
                  width: 150,
                  height: 80,
                  child: ElevatedButton(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Çıkarma',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(5),
                      ),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 30, color: Colors.white),
                      ), // Changed text color to white
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Cikarmaseviye(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //ÇARPMA
                SizedBox(
                  width: 150,
                  height: 80,
                  child: ElevatedButton(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Çarpma',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(5),
                      ),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 30, color: Colors.white),
                      ), // Changed text color to white
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Carpmaseviye(),
                        ),
                      );
                    },
                  ),
                ),
                //BÖLME
                SizedBox(
                  width: 150,
                  height: 80,
                  child: ElevatedButton(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Bölme',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(5),
                      ),
                      // textStyle: MaterialStateProperty.all(
                      //   const TextStyle(fontSize: 30, color: Colors.white),
                      // ), // Changed text color to white
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Bolmeseviye(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
