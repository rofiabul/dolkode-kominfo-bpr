import 'package:flutter/material.dart';
import 'package:myapp/mainpage.dart';
import 'package:myapp/menu1.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Deklarasi TextEditingController
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Untuk menampilkan pesan error
  String _errorMessage = '';

  // Fungsi untuk menangani login
  void _login() {
    String username = _usernameController.text.trim();
    String password = _passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      // Menampilkan SnackBar jika ada kolom yang kosong
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
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
          builder: (context) => MainPage(),
        ),
      );
    } else {
      // Jika login gagal, tampilkan pesan error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
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
      SnackBar(
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
        title: Center(
          child: Text(
            'Halaman Login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Menambahkan padding yang cukup
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/logo.jpeg',
                fit: BoxFit.cover,
                height: 150,
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Jokowi',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: '****',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
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
                    onPressed: _register, // Mengaitkan fungsi register
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 40),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: _login,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 40),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
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
