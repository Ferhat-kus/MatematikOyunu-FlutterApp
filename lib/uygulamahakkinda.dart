import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Uygulamahakkinda extends StatefulWidget {
  @override
  State<Uygulamahakkinda> createState() => _UygulamahakkindaState();
}

class _UygulamahakkindaState extends State<Uygulamahakkinda> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Matematik Oyunu',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Uygulama Hakkında"),
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
                  child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          // width: 360,
                          // height: 445,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Uygulama Hakkında",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 35),
                              ),
                              ListTile(
                                title: Text(
                                  "Kendi geliştirdiğimiz matematik uygulaması, öğrencilerin matematik becerilerini geliştirmelerine yardımcı olan bir araçtır. Uygulama, dört işlem (toplama, çıkarma, çarpma, bölme) ile ilgili problemleri içermektedir ve öğrencilerin bu problemleri çözmelerine olanak tanır."
                                  "Uygulamanın amacı, öğrencilerin matematik becerilerini test etmelerine ve kendilerini geliştirmelerine yardımcı olmaktır. Öğrenciler, uygulama içindeki soruları çözerken, kendi ilerlemelerini izleyebilir ve daha iyi sonuçlar elde etmek için çalışmalarını sürdürebilirler. Soruların zorluğu öğrencilerin seviyesine göre ayarlanabilir, böylece her öğrenci için uygun bir seviyede olabilirler."
                                  "Uygulamanın kullanıcı arayüzü basit ve anlaşılırdır. Bu sayede, öğrencilerin uygulamayı kolayca kullanmaları mümkündür. Ayrıca, uygulama içinde renkli grafikler ve animasyonlar kullanılarak öğrencilerin ilgisi çekilebilir. Bu özellikler, öğrencilerin matematik becerilerini geliştirmek için eğlenceli bir yol sunar."
                                  "Uygulamanız, herhangi bir yaş grubundaki öğrenciler için uygun olabilir. Öğrenciler, matematik becerilerini geliştirmek için herhangi bir zamanda uygulamayı kullanabilirler. Ayrıca, öğretmenler de öğrencilerin ilerlemesini izleyebilir ve uygulama sayesinde öğrencilerin neleri anladıklarını ve neleri anlamadıklarını anlayabilirler."
                                  "Sonuç olarak, kendi geliştirdiğimiz matematik uygulaması, öğrencilerin matematik becerilerini geliştirmelerine yardımcı olan kullanışlı bir araçtır. Uygulamanın kullanıcı dostu arayüzü, öğrencilerin ilgisini çeken özellikleri ve zorluğu ayarlanabilen soruları, öğrencilerin matematik konusunda daha fazla ilerleme kaydetmelerine yardımcı olabilir.",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
            )));
  }
}
