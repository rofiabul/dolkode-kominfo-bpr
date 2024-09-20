import 'package:flutter/material.dart';
import 'package:myapp/mainpage.dart';
import 'package:myapp/menu1.dart';
import 'package:myapp/registrationPage.dart';
// untuk package api
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Deklarasi TextEditingController
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Untuk menampilkan pesan error
  final String _errorMessage = '';
  String urlApi = 'https://fakestoreapi.com/auth/login';

  Future<void> SaveToken(String val) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('token', val);
    print(pref.getString('token'));
  }

  Future<void> loginApi(BuildContext context) async {
    final response = await http.post(Uri.parse(urlApi), body: {
      'username': _usernameController.text,
      'password': _passwordController.text
    });

    print('${_usernameController.text}password${_passwordController.text}');
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      await SaveToken(data['token']);

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const MainPage(),
          ));
    } else {
      print('Login gagal masuk: ${response.statusCode}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text('Login failed: Server error${response.statusCode}'),
        ),
      );
    }
  }

  // Fungsi untuk menangani login
  void _login() {
    String username = _usernameController.text.trim();
    String password = _passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      // Menampilkan SnackBar jika ada kolom yang kosong
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Kolom harus diisi semua',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    if (username == 'admin' && password.isNotEmpty) {
      // Jika login berhasil, navigasi ke Beranda
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MainPage(),
        ),
      );
    } else {
      // Jika login gagal, tampilkan pesan error
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Username atau Password salah.',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  // Fungsi untuk menangani register (Anda bisa menyesuaikan sesuai kebutuhan)
  void _register() {
    // Contoh navigasi ke halaman Register (Anda perlu membuat halaman Register)
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => RegisterPage(),
    //   ),
    // );

    // Untuk saat ini, tampilkan SnackBar
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Fitur Register belum tersedia.',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  void dispose() {
    // Dispose controller untuk mencegah kebocoran memori
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Halaman Login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 41, 46, 91),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Menambahkan padding yang cukup
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/image/logo-presensimu.png',
                fit: BoxFit.cover,
                height: 80,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Username',
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: '****',
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Menampilkan pesan error jika ada
              // Jika Anda ingin menampilkan pesan error di UI, bisa menggunakan kondisi berikut:
              /*
              if (_errorMessage.isNotEmpty)
                Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red),
                ),
              */
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const RegisterPage();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 40),
                      backgroundColor: const Color.fromARGB(255, 41, 46, 91),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ), // Mengaitkan fungsi register
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      loginApi(context);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 40),
                      backgroundColor: const Color.fromARGB(255, 41, 46, 91),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
