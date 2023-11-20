import 'package:flutter/material.dart';
import 'package:praktikum/view/diproses.dart';
import 'package:praktikum/view/selesai.dart';
import 'package:praktikum/view/terkirim.dart';

class riwayat_pengaduan_page extends StatefulWidget {
  const riwayat_pengaduan_page({super.key});

  @override
  State<riwayat_pengaduan_page> createState() => _diproses_PageState();
}

class _diproses_PageState extends State<riwayat_pengaduan_page> {
  int _currentIndex = 0;
  late TabController _controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 48,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Haloo,",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Klien A",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Image.asset(
                                "assets/ic_logo_grey.png",
                                height: 36,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                DefaultTabController(
                    length: 4,
                    initialIndex: _currentIndex,
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true,
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 8),
                          controller: _controller,
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          tabs: const [
                            Tab(text: 'Proyek Baru'),
                            Tab(text: 'Dalam Proses'),
                            Tab(text: 'Proyek Selesai'),
                            Tab(text: 'Proyek Tertahan')
                          ],
                          onTap: (value) {
                            setState(() {
                              _currentIndex = value;
                            });
                          },
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 36),
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height,
                          child: TabBarView(
                            controller: _controller,
                            children: const [
                              diproses_page(),
                              terkirim_page(),
                              selesai_page(),
                            ],
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}