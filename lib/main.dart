import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MehmetEmin());
}

String isim = "";
List<String> yanitlar = [
  'TIKLA FALIN GELSİN',
  'AŞK: $isim Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
  'AŞK: $isim Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
  'AŞK: $isim Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
  'AŞK: $isim Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
  'AŞK: $isim Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
  'PARA: $isim Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
  'PARA: $isim Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
  'PARA: $isim Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
  'PARA: $isim Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
  'PARA: $isim Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
  'TAVSİYE: $isim Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
  'TAVSİYE: $isim Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
  'TAVSİYE: $isim Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
  'TAVSİYE: $isim Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
  'TAVSİYE: $isim Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
];
int yanitno = 0;
Random rand = new Random();

class MehmetEmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text(
              "Günün Falı",
              style: TextStyle(
                  fontSize: 48,
                  fontFamily: "JustAnotherHand",
                  color: Colors.black),
            ),
            centerTitle: true),
        body: Fal(),
      ),
    );
  }
}

class Fal extends StatefulWidget {
  const Fal({Key? key}) : super(key: key);

  @override
  State<Fal> createState() => _FalState();
}

class _FalState extends State<Fal> {
  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 50),
              width: 250,
              height: 180,
              child: Image.asset("assets/falci.png")),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  isim = value;
                });
              },
              controller: _textController,
              decoration: InputDecoration(hintText: 'ADINIZI GİRİNİZ:'),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
            child: ListTile(
              onTap: () {
                setState(() {
                  yanitno = Random().nextInt(5) + 1;
                });
              },
              title: Text(
                "AŞK DURUMU",
                style: TextStyle(color: Colors.red),
              ),
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
            child: ListTile(
              onTap: () {
                setState(() {
                  yanitno = Random().nextInt(5) + 6;
                });
              },
              title: Text(
                "PARA DURUMU",
                style: TextStyle(color: Colors.blueAccent),
              ),
              leading: Icon(
                Icons.shopify,
                color: Colors.blueAccent,
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
            child: ListTile(
              title: Text(
                "GÜNLÜK TAVSİYE",
                style: TextStyle(color: Colors.green),
              ),
              leading: Icon(
                Icons.psychology,
                color: Colors.green,
              ),
              onTap: () {
                setState(() {
                  yanitno = Random().nextInt(5) + 11;
                });
              },
            ),
          ),
          Divider(
            height: 12,
            color: Colors.purple[200],
          ),
          Container(
            padding: EdgeInsets.all(18),
            child: Text(yanitlar[yanitno],
                style: TextStyle(fontSize: 18, color: Colors.white70),
                textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
