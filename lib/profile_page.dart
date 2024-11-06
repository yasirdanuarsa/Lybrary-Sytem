import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username = "Armanda Yasir Danuarsa";
  final String email = "yasir@example.com";
  final String bio = "Mahasiswa informatika yang gemar membaca dan belajar hal baru.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Pengguna'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('profile.png'), // tambahkan gambar di assets
            ),
            SizedBox(height: 20),
            Text(
              'Username: $username',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Email: $email',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Bio: $bio',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
