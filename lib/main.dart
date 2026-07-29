import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Profile"),
          backgroundColor: Colors.cyan,
        ),
        body: _buildbody(),
      ),
    );
  }

  Widget _buildbody() {
    return Center(
      child:Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child:Padding(padding:const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildProfileImage(),
          const SizedBox(height: 20),
          _buildProfileInfo(),
          const SizedBox(height: 10),
          _buildProfileButtons(),
        ],
      ),
    ),
    )
    );
  }

  Widget _buildProfileImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "images/sef.jpg",
        height: 200,
        width: 200,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildProfileInfo() {
    return Column(
      children: [
        const Text(
          "John Doe",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          "Flutter Developer,",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileButtons() {
    return Column(children: [
      ElevatedButton.icon(onPressed:(){}, icon: const Icon(Icons.email), label: Text("detacis@gmail.com")),
      const SizedBox(height: 10,),
      ElevatedButton.icon(
  onPressed: () {},
  icon: const Icon(Icons.phone),
  label: const Text("622058466"),
),
const SizedBox(height: 10,),
OutlinedButton(
  onPressed: () {},
  child: const Text("Follow"),
),
    ]);
  }
  
}
