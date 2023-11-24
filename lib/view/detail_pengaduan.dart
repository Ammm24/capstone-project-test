import 'package:flutter/material.dart';

class detailPengaduan_page extends StatelessWidget {
  const detailPengaduan_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: const Color.fromARGB(255, 192, 192, 192),
          backgroundColor: const Color.fromARGB(255, 255, 253, 253),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              IconButton(
                iconSize: 25,
                icon: const Icon(Icons.arrow_back),
                color: const Color.fromARGB(255, 255, 0, 0),
                onPressed: () {
                  Navigator.pop(context); // Replace onPressed callback
                },
              ),
              const Text(
                "Postingan Keluhan",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                    width: 30,
                  ),
                  Image.asset(
                    'assets/Contact.png',
                    width: 60,
                    height: 130,
                  ),
                  const SizedBox(
                    width: 27,
                    height: 10,
                  ),
                  const Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jelita Salsabila',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Jalang Engku Putri, Kota Batam',
                        style: TextStyle(fontSize: 14.5, color: Colors.red),
                      ),
                    ],
                  )),
                ],
              ),
              const SizedBox(
                height: 10,
                width: 30,
              ),
              const Text(
                'Saya telah Menghubungi layanan pelanggan anda beberapa kali, tetapi tidak ada tanggapan bantuan yang memadai terkait masalah dengan akun saya',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 20,
                width: 50,
              ),
              Column(
                children: [Image.asset('assets/Ling.png')],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.thumb_up_alt_outlined),
                        onPressed: () {},
                      ),
                      const Text('100'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.comment),
                        onPressed: () {},
                      ),
                      const Text('50'),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.bookmark_border_outlined),
                        onPressed: () {},
                      ),
                      const Text('200000'),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.share_outlined),
                        onPressed: () {},
                      ),
                      const Text('20'),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                    width: 22,
                  ),
                  const Text(
                    'Terbaru',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_drop_down),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 200),
                child: ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.only(
                        top: 12,
                        bottom: 17,
                        left: 20,
                        right: 20,
                      ),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/Contact.png',
                            width: 45,
                            height: 90,
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                const Text(
                                  'Jelita Salsabila',
                                  style: TextStyle(fontSize: 18),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Jalan di sekitar sini rusak parah! Banyak lubang bikin bahaya buat kendaraan. Tolong diperbaiki secepatnya dong biar nggak berisiko kecelakaan',
                                  softWrap: true,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const detailPengaduan_page(),
                                      ),
                                    );
                                  },
                                  child: const Text('Balas'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Tambahkan Komentar',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        // Implement the desired action for adding the comment=
                      },
                      child: const Text('Kirim'),
                    ),
                  ],
                ),
              )
            ])));
  }
}
