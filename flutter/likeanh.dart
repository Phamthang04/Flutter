import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LikeCounterApp(),
    );
  }
}

class LikeCounterApp extends StatefulWidget {
  @override
  _LikeCounterAppState createState() => _LikeCounterAppState();
}

class _LikeCounterAppState extends State<LikeCounterApp> {
  bool isLiked = false; 
  int currentCounter = 0; 

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  void incrementCounter() {
    setState(() {
      currentCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homework'),
        backgroundColor: Colors.blue,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.offline_pin, color: Colors.red),
          )
        ],
      ),
      body: Column(
        children: [
          Image.network(
            'https://inkythuatso.com/uploads/thumbnails/800/2022/05/anh-gai-xinh-2k4-inkythuatso-35-07-15-23-54.jpg',
            height: 300,
            fit: BoxFit.cover,
          ),
          // Thanh nút hành động (Like, Comment, Share)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border),
                  color: isLiked ? Colors.red : Colors.black,
                  onPressed: toggleLike,
                ),
                IconButton(
                  icon: Icon(Icons.comment),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          // Hiển thị currentCounter
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'currentCounter is: $currentCounter',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
