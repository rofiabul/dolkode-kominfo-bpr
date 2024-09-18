import 'package:flutter/material.dart';
import 'package:myapp/menu1.dart';
import 'package:myapp/menu2.dart';
import 'package:myapp/menu3.dart';
import 'package:myapp/menu4.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Utama'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
                child: Card(
                    color: Colors.amber,
                    child: ListTile(
                      title: Text('Rofi Abul Hasani'),
                      subtitle: Text('Admin'),
                      leading: Icon(Icons.home),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ))),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                children: [
                  TextButton(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.app_registration,
                            size: 62,
                            color: Colors.white,
                          ),
                          Text(
                            "Antrian",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      print('Web View');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Menu1()));
                    },
                  ),
                  TextButton(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.date_range_rounded,
                            size: 62,
                            color: Colors.white,
                          ),
                          Text(
                            "WebView",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Menu2()));
                    },
                  ),
                  TextButton(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.settings_system_daydream_sharp,
                            size: 62,
                            color: Colors.white,
                          ),
                          Text(
                            "Get Data",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Menu4()));
                    },
                  ),
                  TextButton(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_to_queue,
                            size: 62,
                            color: Colors.white,
                          ),
                          Text(
                            "Aplikasi D",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // Handle taps on the tabs
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
