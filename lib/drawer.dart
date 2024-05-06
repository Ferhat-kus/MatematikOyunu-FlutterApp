import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'uygulamahakkinda.dart';
import 'hakkimizda.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              "Ferhat Kuş",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            accountEmail: const Text(
              "ferhatkus204@gmail.com",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset("assets/images/ferhatkus.jpg"),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/drawerarkaplan.png"),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Anasayfa"),
              onTap: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => Drawer()));
              }),
          ListTile(
              leading: const Icon(Icons.info),
              title: const Text("Uygulama Hakkında"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Uygulamahakkinda()));
              }),
          ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Geliştirici"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Hakkimizda()));
              }),
        ],
      ),
    );
  }
}
