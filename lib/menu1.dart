import 'package:flutter/material.dart';
import 'package:barcode/barcode.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class Menu1 extends StatefulWidget {
  const Menu1({super.key});

  @override
  State<Menu1> createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
// List<String> colorcode = <String>['blueAccent', 'indigo'];
  Color colorcode = Colors.blueAccent;
  Color fontcolorcode = Colors.white;
  int antrian = 0;
  String kode_registrasi = "PLU100000";
  void generateQr() {
    setState(() {
      antrian = antrian + 1;
      int angka = 100000 + antrian;
      kode_registrasi = "PLU$angka";
    });
  }

  final String _counter = 'Halaman 1';
  void ChangePage() {
    setState(() {
      antrian = antrian++;
      generateQr();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('presensi'),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  height: 100,
                  width: 100,
                  child: PrettyQrView.data(
                    data: kode_registrasi,
                    decoration: PrettyQrDecoration(),
                  ),
                ),
                Text(kode_registrasi)
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              ChangePage();
            },
            child: const Text('Daftar Antrian'),
          ),
        ],
      ),
    );
  }
}
