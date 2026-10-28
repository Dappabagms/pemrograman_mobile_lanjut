
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class Nilai {
  final String mataKuliah;
  final int sks;
  final String nilaiHuruf;
  final int nilaiAngka;

  const Nilai({
    required this.mataKuliah,
    required this.sks,
    required this.nilaiHuruf,
    required this.nilaiAngka,
  });
}


class Mahasiswa {
  final String nim;
  final String nama;
  final String prodi;
  final int semester;
  final String email;
  final Color warna;
  final List<Nilai> daftarNilai;

  const Mahasiswa({
    required this.nim,
    required this.nama,
    required this.prodi,
    required this.semester,
    required this.email,
    required this.warna,
    required this.daftarNilai,
  });
}


const List<Mahasiswa> dataMahasiswa = [
  Mahasiswa(
    nim: '2401001',
    nama: 'Daffa Bagas',
    prodi: 'Teknik Informatika',
    semester: 3,
    email: 'daffabagas51@email.com',
    warna: Colors.blue,
    daftarNilai: [
      Nilai(
        mataKuliah: 'Pemrograman Mobile',
        sks: 3,
        nilaiHuruf: 'A',
        nilaiAngka: 90,
      ),
      Nilai(
        mataKuliah: 'Basis Data',
        sks: 3,
        nilaiHuruf: 'A',
        nilaiAngka: 88,
      ),
      Nilai(
        mataKuliah: 'Struktur Data',
        sks: 3,
        nilaiHuruf: 'B',
        nilaiAngka: 82,
      ),
      Nilai(
        mataKuliah: 'Matematika Diskrit',
        sks: 2,
        nilaiHuruf: 'A',
        nilaiAngka: 91,
      ),
      Nilai(
        mataKuliah: 'Sistem Operasi',
        sks: 3,
        nilaiHuruf: 'B',
        nilaiAngka: 80,
      ),
    ],
  ),
  Mahasiswa(
    nim: '2401002',
    nama: 'Andi Pratama',
    prodi: 'Sistem Informasi',
    semester: 3,
    email: 'andi@email.com',
    warna: Colors.green,
    daftarNilai: [
      Nilai(
        mataKuliah: 'Pemrograman Mobile',
        sks: 3,
        nilaiHuruf: 'B',
        nilaiAngka: 83,
      ),
      Nilai(
        mataKuliah: 'Basis Data',
        sks: 3,
        nilaiHuruf: 'A',
        nilaiAngka: 92,
      ),
      Nilai(
        mataKuliah: 'Struktur Data',
        sks: 3,
        nilaiHuruf: 'A',
        nilaiAngka: 89,
      ),
      Nilai(
        mataKuliah: 'Matematika Diskrit',
        sks: 2,
        nilaiHuruf: 'B',
        nilaiAngka: 84,
      ),
      Nilai(
        mataKuliah: 'Sistem Operasi',
        sks: 3,
        nilaiHuruf: 'A',
        nilaiAngka: 90,
      ),
    ],
  ),
  Mahasiswa(
    nim: '2401003',
    nama: 'Siti Amelia',
    prodi: 'Teknik Informatika',
    semester: 3,
    email: 'siti@email.com',
    warna: Colors.deepOrange,
    daftarNilai: [
      Nilai(
        mataKuliah: 'Pemrograman Mobile',
        sks: 3,
        nilaiHuruf: 'A',
        nilaiAngka: 95,
      ),
      Nilai(
        mataKuliah: 'Basis Data',
        sks: 3,
        nilaiHuruf: 'B',
        nilaiAngka: 85,
      ),
      Nilai(
        mataKuliah: 'Struktur Data',
        sks: 3,
        nilaiHuruf: 'A',
        nilaiAngka: 90,
      ),
      Nilai(
        mataKuliah: 'Matematika Diskrit',
        sks: 2,
        nilaiHuruf: 'A',
        nilaiAngka: 94,
      ),
      Nilai(
        mataKuliah: 'Sistem Operasi',
        sks: 3,
        nilaiHuruf: 'B',
        nilaiAngka: 81,
      ),
    ],
  ),
];


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Informasi Mahasiswa',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F7FB),
      ),
      home: const HalamanDaftar(),
    );
  }
}


class HalamanDaftar extends StatelessWidget {
  const HalamanDaftar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Informasi Mahasiswa',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Daftar Mahasiswa',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Pilih mahasiswa untuk melihat detail dan nilai.',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: dataMahasiswa.length,
              itemBuilder: (context, index) {
                final mahasiswa = dataMahasiswa[index];

                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(12),
                    leading: CircleAvatar(
                      radius: 26,
                      backgroundColor: mahasiswa.warna,
                      child: Text(
                        mahasiswa.nama[0],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    title: Text(
                      mahasiswa.nama,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        'NIM: ${mahasiswa.nim}\n'
                        '${mahasiswa.prodi}',
                      ),
                    ),
                    isThreeLine: true,
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              HalamanDetail(mahasiswa: mahasiswa),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


class HalamanDetail extends StatelessWidget {
  final Mahasiswa mahasiswa;

  const HalamanDetail({
    super.key,
    required this.mahasiswa,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: mahasiswa.warna,
                    child: Text(
                      mahasiswa.nama[0],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    mahasiswa.nama,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  infoBaris('NIM', mahasiswa.nim),
                  infoBaris('Program Studi', mahasiswa.prodi),
                  infoBaris(
                    'Semester',
                    mahasiswa.semester.toString(),
                  ),
                  infoBaris('Email', mahasiswa.email),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Daftar Nilai Mata Kuliah',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),

          
          ...mahasiswa.daftarNilai.map((nilai) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue.shade50,
                  child: const Icon(
                    Icons.menu_book,
                    color: Colors.blue,
                  ),
                ),
                title: Text(
                  nilai.mataKuliah,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  '${nilai.sks} SKS | Nilai angka: ${nilai.nilaiAngka}',
                ),
                trailing: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    nilai.nilaiHuruf,
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            );
          }),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            label: const Text('Kembali ke Daftar'),
          ),
        ],
      ),
    );
  }

  Widget infoBaris(String label, String isi) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 115,
            child: Text(
              label,
              style: const TextStyle(color: Colors.black54),
            ),
          ),
          const Text(': '),
          Expanded(
            child: Text(
              isi,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
