import 'package:flutter/material.dart';

class BaiMau5 extends StatelessWidget {
  const BaiMau5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Động Phong Nha',
      debugShowCheckedModeBanner: false,
      home: BaiMau5Screen(),
    );
  }
}

class BaiMau5Screen extends StatelessWidget {
  const BaiMau5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Demo'),
        backgroundColor: Colors.amber,
        leading: IconButton(icon: Icon(Icons.home), onPressed: () {}),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(40),
              image: const DecorationImage(
                image: AssetImage('assets/images/my-avatar.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 20,
            left: 20,
            bottom: 20,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 150,
              child: const Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Động Phong Nha',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Động Phong Nha, nằm trong vườn quốc gia Phong Nha - Kẻ Bàng, tỉnh Quảng Ninh, Việt Nam, là một trong những hang động nổi tiếng và hấp dẫn nhất trên thế giới.',
                      maxLines: 4,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
