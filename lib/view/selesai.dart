import 'package:flutter/material.dart';

class selesai_page extends StatelessWidget {
  const selesai_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: const Color.fromARGB(255, 248, 248, 248),
        backgroundColor: const Color.fromARGB(255, 255, 253, 253),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              iconSize: 25,
              icon: const Icon(Icons.arrow_back),
              color: const Color.fromARGB(255, 255, 0, 0),
              onPressed: () {
                // Implement back button functionality
              },
            ),
            const Text(
              "Riwayat Pengaduan",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: const Text('halo'),
    );
  }
}
