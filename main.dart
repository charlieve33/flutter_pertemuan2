import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(26, 27, 4, 131),
          leading: Icon(Icons.home),
          title: Text('Flutter App one '),
        ),
        body: SingleChildScrollView(
          child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Row( children: [Icon(Icons.archive), Text("Artikel Baru")]),
              Card(
                child: Column(
                  children: [
                    Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
                    Text("Menemukan Kedamaian di Balik Cakrawala: Mengapa Kita Butuh Alam", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Di tengah hiruk-pikuk suara klakson dan gemerlap layar gawai, ada satu panggilan yang sering kita abaikan: suara alam. Pemandangan alam bukan sekadar objek foto untuk media sosial, melainkan obat alami yang mampu menyembuhkan kelelahan jiwa."),
                    Text("Pemandangan alam adalah pengingat bahwa dunia ini jauh lebih luas dari sekadar rutinitas kantor atau tugas sekolah. Luangkanlah waktu sejenak untuk menatap langit atau sekadar melihat tanaman di halaman rumah. Jiwa Anda akan berterima kasih untuk itu.")
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text('komentar',
                  style: TextStyle(
                    fontSize: 15, 
                    fontWeight: .bold
                    ),
                  ),
                ],
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CICI"),
                            Text("BAGUS SEKALI"),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("KIKI"),
                            Text("SANGAT INDAH"),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("vivi"),
                            Text("AMAZING"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),  
          ),
        ),
      ),
    );
  }
}