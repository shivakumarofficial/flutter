import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: const Text("My Profile", style: TextStyle(color: Colors.black)),
      backgroundColor: Colors.white,
      elevation: 0.5,
    ),
    body: Column(
      children: [
        const SizedBox(height: 30),

        CircleAvatar(radius: 60, backgroundImage: NetworkImage('https://picsum.photos/200')),

        const SizedBox(height: 15),

        const Text("SHIVAKUMAR", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

        const SizedBox(height: 5),

        const Text("FLUTTER DEVELOPER", style: TextStyle(fontSize: 16, color: Colors.grey)),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Column(children: [
              Text("10", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("Posts", style: TextStyle(color: Colors.grey)),
            ]),
            Column(children: [
              Text("120", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("Followers", style: TextStyle(color: Colors.grey)),
            ]),
            Column(children: [
              Text("100", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("Following", style: TextStyle(color: Colors.grey)),
            ]),
          ],
        ),
      ],
    ),
  )));
}