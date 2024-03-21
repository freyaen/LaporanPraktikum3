import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Pengguna'),
        ),
        body: UserList(),
      ),
    );
  }
}

class UserList extends StatelessWidget {
  final List<Map<String, String>> users = [
    {
      "nama": "Freya Enggrayni",
      "hobi": "Berenang",
      "foto":
          "https://images.unsplash.com/photo-1582791694770-cbdc9dda338f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    },
    {
      "nama": "Nahida",
      "hobi": "Belajar",
      "foto":
          "https://i2.wp.com/genshinbuilds.aipurrjects.com/genshin/characters/nahida/image.png?strip=all&quality=100"
    },
    {
      "nama": "Alhaitham",
      "hobi": "Menulis",
      "foto":
          "https://i2.wp.com/genshinbuilds.aipurrjects.com/genshin/characters/alhaitham/image.png?strip=all&quality=100"
    },
    {
      "nama": "Lisa",
      "hobi": "Membaca",
      "foto":
          "https://i2.wp.com/genshinbuilds.aipurrjects.com/genshin/characters/lisa/image.png?strip=all&quality=100&w=160"
    },
    {
      "nama": "Albudi",
      "hobi": "Menggambar",
      "foto":
          "https://i2.wp.com/genshinbuilds.aipurrjects.com/genshin/characters/albedo/image.png?strip=all&quality=100"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        return UserCard(
          nama: users[index]['nama']!,
          hobi: users[index]['hobi']!,
          foto: users[index]['foto']!,
        );
      },
    );
  }
}

class UserCard extends StatelessWidget {
  final String nama;
  final String hobi;
  final String foto;

  UserCard({required this.nama, required this.hobi, required this.foto});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(foto),
        ),
        title: Text(nama),
        subtitle: Text(hobi),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
