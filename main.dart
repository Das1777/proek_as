import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan label "Debug"
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('image/download.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 105,
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('image/download.png'),
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 20,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      // Add your back arrow onPressed action here
                    },
                  ),
                ),
                Positioned(
                  top: 160,
                  right: 20,
                  child: FloatingActionButton(
                    mini: true,
                    onPressed: () {
                      // Add your edit cover photo code here
                    },
                    child: Icon(Icons.edit),
                  ),
                ),
                Positioned(
                  top: 210,
                  right: MediaQuery.of(context).size.width / 2 - 20,
                  child: FloatingActionButton(
                    mini: true,
                    onPressed: () {
                      // Add your edit profile photo code here
                    },
                    child: Icon(Icons.edit),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Text(
              'Dino Anggoro S',
              style: TextStyle(
                fontSize: 28, // Diperbesar dari 24
                fontWeight: FontWeight.bold,
                color: Colors.black, // Warna font hitam
              ),
            ),
            Text(
              'Kelas: XI IPA 8',
              style: TextStyle(
                fontSize: 20, // Diperbesar dari 18
                color: Colors.black, // Warna font hitam
              ),
            ),
            Text(
              'Email: yandex@gmail.com',
              style: TextStyle(
                fontSize: 20, // Diperbesar dari 18
                color: Colors.black, // Warna font hitam
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your edit profile code here
                      },
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(fontSize: 18, color: Colors.black), // Warna font hitam
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        primary: Colors.grey[200], // Warna latar belakang tombol
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your peminjaman code here
                      },
                      child: Text(
                        'Peminjaman',
                        style: TextStyle(fontSize: 18, color: Colors.black), // Warna font hitam
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        primary: Colors.grey[200], // Warna latar belakang tombol
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your language change code here
                      },
                      child: Text(
                        'Language',
                        style: TextStyle(fontSize: 18, color: Colors.black), // Warna font hitam
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        primary: Colors.grey[200], // Warna latar belakang tombol
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Add your log out code here
                      },
                      icon: Icon(Icons.exit_to_app, color: Colors.black), // Warna ikon hitam
                      label: Text(
                        'Log Out',
                        style: TextStyle(fontSize: 18, color: Colors.black), // Warna font hitam
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
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
