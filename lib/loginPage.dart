import 'package:flutter/material.dart';
import 'package:myapp/mainpage.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({super.key});

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:276306519.
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Login'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          // Image.network(
          //     'https://img.freepik.com/free-vector/blur-pink-blue-abstract-gradient-background-vector_53876-174836.jpg'),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Expanded(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Image.asset(height: 150, 'assets/image/logo-flutter.png'),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: username,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: 'username',
                          hintText: 'masukan username',
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key),
                          labelText: 'password',
                          hintText: 'masukan password',
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: Text('register sssd')),
                        SizedBox(width: 20),
                        ElevatedButton(
                            onPressed: () {
                              if (username == 'admin') {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return MainPage();
                                }));
                              }
                            },
                            child: Text('login'))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
