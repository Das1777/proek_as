import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController classController = TextEditingController();
  TextEditingController emailController = TextEditingController();

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
              'Email: yandex@gmail.com',
              style: TextStyle(
                fontSize: 20, // Diperbesar dari 18
                color: Colors.black, // Warna font hitam
              ),
            ),
            SizedBox(height: 60),
            // Username text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            // Class text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                controller: classController,
                decoration: InputDecoration(
                  labelText: 'Class',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            // Email text field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32.0),
            // Save button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                width: 300,
                height: 50, // Increase the height
                child: ElevatedButton(
                  onPressed: () {
                    // Save button action goes here
                    // You can implement the save functionality here
                    // For simplicity, we'll just print the entered values
                    print('Username: ${usernameController.text}');
                    print('Class: ${classController.text}');
                    print('Email: ${emailController.text}');
                  },
                  child: Text('Save'),
                  style: ElevatedButton.styleFrom(
                    textStyle:
                        TextStyle(fontSize: 25), // Increase the font size
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
