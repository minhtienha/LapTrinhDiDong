import 'package:flutter/material.dart';

class BaiMau3 extends StatelessWidget {
  const BaiMau3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Drawer',
      debugShowCheckedModeBanner: false,
      home: BaiMau3Drawer(),
    );
  }
}

class BaiMau3Drawer extends StatelessWidget {
  const BaiMau3Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Drawer Demo',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 239, 168, 4),
      ),
      body: const Center(
        child: Text('Drawer Demo', style: TextStyle(fontSize: 30)),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Hà Minh Tiến'),
              accountEmail: Text('minhtien2507@huit.edu.vn'),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    "assets/images/my-avatar.jpg",
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.business),
              title: const Text('Course'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Contact'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
