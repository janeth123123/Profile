import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilApp());
}

class ProfilApp extends StatelessWidget {
  const ProfilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profil Diri",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: const Text("Profil Diri"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Fitur Edit Profil belum tersedia")),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto Profil
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/profil.jpg"), // ganti dengan fotomu
            ),
            const SizedBox(height: 15),

            // Nama
            const Text(
              "Junesty Toding Bua'",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 5),

            // Deskripsi
            const Text(
              "Mahasiswa Informatika ",
              style: TextStyle(fontSize: 16, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Biodata
            buildSection(
              title: "Biodata",
              children: const [
                ListTile(
                  leading: Icon(Icons.school, color: Colors.teal),
                  title: Text("Universitas Mulawarman"),
                  subtitle: Text("Program Studi Informatika"),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.cake, color: Colors.teal),
                  title: Text("Tanggal Lahir"),
                  subtitle: Text("01 Juni 20004"),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.location_on, color: Colors.teal),
                  title: Text("Alamat"),
                  subtitle: Text("Samarinda, Kalimantan Timur"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Informasi Tambahan (Hobi & Cita-cita)
            buildSection(
              title: "Informasi Lainnya",
              children: const [
                ListTile(
                  leading: Icon(Icons.star, color: Colors.teal),
                  title: Text("Hobi"),
                  subtitle: Text("Membaca, Menulis, Traveling"),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.flag, color: Colors.teal),
                  title: Text("Cita-cita"),
                  subtitle: Text("Menjadi Software Engineer profesional"),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Kontak
            buildSection(
              title: "Kontak",
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.phone, color: Colors.teal),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.email, color: Colors.teal),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.web, color: Colors.teal),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.facebook, color: Colors.teal),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget reusable untuk card section
  static Widget buildSection({required String title, required List<Widget> children}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal)),
            const SizedBox(height: 10),
            ...children,
          ],
        ),
      ),
    );
  }
}
