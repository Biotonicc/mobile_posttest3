import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "POSTTEST 3",
      home: MainPage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

enum Sex { lakilaki, perempuan }

class _MainPageState extends State<MainPage> {

  Sex? _sex = Sex.lakilaki;
  final controllerNama = TextEditingController();
  final controllerKategori = TextEditingController();

  String nama = "";
  String kategori = "";
  String jenis_kelamin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(40),
            child: Align(
              child: Text(
                "We Would Like To Know About You",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: controllerNama,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    labelStyle: TextStyle(
                      color: Colors.green,
                    ),
                    hintText: "Cristian Alex",
                    hintStyle: TextStyle(
                      color: Colors.white30,
                    ),
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: controllerKategori,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: "Game Category You Interested",
                    labelStyle: TextStyle(
                      color: Colors.green,
                    ),
                    hintText: "RPG, Rhythm, etc.",
                    hintStyle: TextStyle(
                      color: Colors.white30,
                    ),
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    "Sex:",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 13),
                  Radio(
                    value: Sex.lakilaki,
                    groupValue: _sex,
                    onChanged: (Sex? value){
                      setState( () {
                        _sex = value;
                      });
                    },
                  ),
                  Text(
                    "Male",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 13),
                  Radio(
                    value: Sex.perempuan,
                    groupValue: _sex,
                    onChanged: (Sex? value){
                      setState( () {
                        _sex = value;
                      });
                    },
                  ),
                  Text(
                    "Female",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  setState( () {
                    nama = controllerNama.value.text;
                    kategori = controllerKategori.value.text;
                    if(_sex == Sex.lakilaki){
                      jenis_kelamin = "Male";
                    }
                    else{
                      jenis_kelamin = "Female";
                    }
                  });
                },
                child: Text(
                  "Submit",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your name is: $nama\nGame Category you interested: $kategori\nYour sex: $jenis_kelamin",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
