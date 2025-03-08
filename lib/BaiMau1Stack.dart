import 'package:flutter/material.dart';

class BaiMau1 extends StatelessWidget {
  const BaiMau1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bài mẫu Stack',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: BaiMauStackScreen(),
    );
  }
}

class BaiMauStackScreen extends StatelessWidget {
  const BaiMauStackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack demo', style: TextStyle(color: Colors.white)),
        leading: Icon(Icons.home, color: Colors.white),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(color: Colors.blue, height: 200, width: 200),
              Container(color: Colors.red, height: 150, width: 150),
              Positioned(
                right: 50,
                left: 50,
                top: 10,
                child: Container(color: Colors.green, height: 80, width: 80),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
