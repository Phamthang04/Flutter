import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Bell icon
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.black),
              onPressed: () {
                // Thêm tính năng thông báo
              },
            ),
            // Logo với Gradient
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: <Color>[Colors.blue, Colors.pink],
              ).createShader(bounds),
              child: Text(
                'Logo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Màu chữ sẽ bị bỏ qua khi dùng ShaderMask
                ),
              ),
            ),
            // Cart icon
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.black),
              onPressed: () {
                // Thêm tính năng giỏ hàng
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search here",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                // Hamburger menu icon
                IconButton(
                  icon: Icon(Icons.menu, color: Colors.black),
                  onPressed: () {
                    // Thêm tính năng menu
                  },
                ),
              ],
            ),
            SizedBox(height: 20), // Khoảng cách giữa trường tìm kiếm và khung hình vuông
            // Khung hình vuông
            Container(
              width: 800, 
              height: 250, 
              color: Colors.blue, 
              alignment: Alignment.centerLeft, 
              padding: EdgeInsets.all(2.0), 
              child: Text(
                'Todays Deal',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

