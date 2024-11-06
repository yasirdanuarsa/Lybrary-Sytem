import 'package:flutter/material.dart';
import 'book_detail_page.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> books = [
    {'title': 'Pemrograman Android Dengan Flutter Edisi 2', 'author': 'Budi Raharjo', 'description': 'Panduan lengkap untuk belajar Flutter dari dasar hingga mahir.'},
    {'title': 'Belajar Dart', 'author': 'Budi', 'description': 'Pelajari bahasa pemrograman Dart untuk membangun aplikasi yang cepat dan efisien.'},
    {'title': 'Struktur Data', 'author': 'Cici', 'description': 'Konsep dasar struktur data yang sering digunakan dalam pengembangan perangkat lunak.'},
    {'title': 'Algoritma Pemrograman', 'author': 'Dedi', 'description': 'Pahami berbagai algoritma pemrograman untuk menyelesaikan berbagai masalah komputasi.'},
    {'title': 'Database Terapan', 'author': 'Eka', 'description': 'Panduan mengenai penggunaan database dalam aplikasi dengan studi kasus nyata.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purpleAccent, Colors.blueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white.withOpacity(0.9),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurpleAccent,
                    child: Icon(Icons.book, color: Colors.white),
                  ),
                  title: Text(
                    books[index]['title']!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  subtitle: Text('Penulis: ${books[index]['author']}'),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.deepPurple),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookDetailPage(
                          title: books[index]['title']!,
                          author: books[index]['author']!,
                          description: books[index]['description']!,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
