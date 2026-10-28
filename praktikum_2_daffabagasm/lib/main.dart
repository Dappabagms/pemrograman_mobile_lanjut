import 'package:flutter/material.dart';
import 'package:praktikum_2_daffabagasm/pertemuan02_responsif/constanta.dart';
import 'package:praktikum_2_daffabagasm/pertemuan02_responsif/data_mahasiswa_layar_kecil.dart';
import 'package:praktikum_2_daffabagasm/pertemuan02_responsif/data_mahasiswa_layar_lebar.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HalamanUtama());
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});
  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    double lebarLayar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Responsif")),
      body: lebarLayar <= layarKecil
          ? DataMahasiswaLayarKecil()
          : DataMahasiswaLayarLebar(),
      bottomNavigationBar: lebarLayar <= layarKecil
          ? BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: "Informatika",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: "Sistem\nInformasi",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: "Teknologi\nInformasi",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.high_quality),
                  label: "Terbaik",
                ),
              ],
            )
          : null,
      drawer: lebarLayar <= layarKecil
          ? null
          : Drawer(
              child: Column(
                children: [
                  DrawerHeader(
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        spacing: 8,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [CircleAvatar(), Text("Menu Utama")],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Icon(Icons.home),
                          title: Text("Home"),
                        ),
                        ListTile(
                          leading: Icon(Icons.people),
                          title: Text("Informatika"),
                        ),
                        ListTile(
                          leading: Icon(Icons.people),
                          title: Text("Sistem Informasi"),
                        ),
                        ListTile(
                          leading: Icon(Icons.people),
                          title: Text("Teknologi Informasi"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
