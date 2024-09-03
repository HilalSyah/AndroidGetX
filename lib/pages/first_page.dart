import 'package:bangun_datar_getx/pages/lingkaran.dart';
import 'package:bangun_datar_getx/pages/persegi_pages.dart';
import 'package:bangun_datar_getx/pages/persegi_panjang.dart';
import 'package:bangun_datar_getx/pages/segitiga.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => PersegiPage());
                },
                child: Text("Persegi"),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => PersegiPanjangPage());
                },
                child: Text("Persegi Panjang"),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => SegitigaPage());
                },
                child: Text("Segitiga"),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => LingkaranPage());
                },
                child: Text("Lingkaran"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
