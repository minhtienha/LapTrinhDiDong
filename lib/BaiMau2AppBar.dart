import 'package:flutter/material.dart';

class BaiMau2 extends StatelessWidget {
  const BaiMau2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'AppBar Demo', home: BaiMau2Screen());
  }
}

class BaiMau2Screen extends StatelessWidget {
  const BaiMau2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AppBar Demo',
          style: TextStyle(color: Color.fromARGB(255, 237, 148, 23)),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(189, 189, 149, 239),
        toolbarHeight: 50,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.logout), onPressed: () {}),
        ],
      ),
    );
  }
}
