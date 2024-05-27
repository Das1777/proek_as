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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BackgroundImage(),
      debugShowCheckedModeBanner: false, // Menghapus banner debug
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/ai.jpg'), // Ganti dengan path gambar latar belakang Anda
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 100, // Atur lebar gambar sesuai kebutuhan Anda
                  height: 100, // Atur tinggi gambar sesuai kebutuhan Anda
                  child: Image(image: AssetImage('image/book.png')),
                ),
                SizedBox(height: 32), // Menambah jarak antara gambar dan teks
                Text(
                  'Access Your Modern Library!',
                  style: TextStyle(
                    fontSize: 35, // Atur ukuran font sesuai kebutuhan Anda
                    color: Colors.white, // Atur warna teks sesuai kebutuhan Anda
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50), // Menambah jarak antara teks dan tombol
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol Sign Up ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey, // Warna latar belakang tombol Sign Up
                    minimumSize: Size(300, 100), // Atur ukuran minimum tombol
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 40), // Atur ukuran font pada tombol
                  ),
                ),
                SizedBox(height: 20), // Menambah jarak antara tombol Sign Up dan Sign In
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol Sign In ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black, // Warna latar belakang tombol Sign In
                    minimumSize: Size(380, 100), // Atur ukuran minimum tombol
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 40), // Atur ukuran font pada tombol
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
