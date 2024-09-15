import 'package:flutter/material.dart';

Widget buildMenuCard(BuildContext context, String title, String imageUrl, Widget targetPage) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => targetPage),
      );
    },
    child: Card(
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(imageUrl, fit: BoxFit.cover),
          ),
          const SizedBox(height: 10), // Jarak antara gambar dan tulisan
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ),
  );
}
