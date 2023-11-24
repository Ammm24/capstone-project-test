import 'package:flutter/material.dart';

class diproses_page extends StatelessWidget {
  const diproses_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: TabBarView(children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 200),
                    child: ListView.builder(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.only(
                            top: 12,
                            bottom: 17,
                            left: 20,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/Contact.png',
                                width: 45,
                                height: 90,
                              ),
                              const SizedBox(width: 15),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20),
                                    Text(
                                      'Keluhan Infrastruktur',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Jalan di sekitar sini rusak parah! Banyak lubang bikin bahaya buat kendaraan. Tolong diperbaiki secepatnya dong biar nggak berisiko kecelakaan',
                                      softWrap: true,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(height: 30),
                                    Text(
                                      'Lihat Selengkapnya',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ]),
              )
            ])));
  }
}
