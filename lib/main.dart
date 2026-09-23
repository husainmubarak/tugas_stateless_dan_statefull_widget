import 'package:flutter/material.dart';
import 'counter.dart'; 

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Profil Mahasiswa', 
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30),

            const CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage('assets/images/profil.png'),
            ),
            const SizedBox(height: 20),

            const Text(
              'Muhammad Husain Al Mubarak',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),

            const Text(
              'NIM: 2411016310022',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.orange.withOpacity(0.15),
                      child: const Icon(Icons.school, color: Colors.orange),
                    ),
                    title: Text(
                      'Program Studi', 
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                    subtitle: Text(
                      'Ilmu Komputer',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 10),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.orange.withOpacity(0.15),
                      child: const Icon(Icons.apartment, color: Colors.orange),
                    ),
                    title: Text(
                      'Universitas', 
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                    subtitle: Text(
                      'Universitas Lambung Mangkurat',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: ElevatedButton(

        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Counter()),
          );
        },

        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Counter'),
            SizedBox(width: 8),
            Icon(Icons.arrow_forward),
          ],
        ),

      ),
    );
  }
}
