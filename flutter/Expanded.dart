import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exercises'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tạo giao diện sau',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Keno là một loại hình chơi xổ số của Vietlott',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Column(
                children: statistic.map((item) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              item.text,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Stack(
                              children: [
                                Container(
                                  height: 10,
                                  color: Colors.grey[300],
                                ),
                                FractionallySizedBox(
                                  widthFactor: item.count / 5, // Tính tỉ lệ dựa trên số lần tối đa (5)
                                  child: Container(
                                    height: 10,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '${item.count} lần',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final statistic = [
  Keno('Lẻ', 5),
  Keno('Hoà CL', 3),
  Keno('Chẵn', 2),
];

class Keno {
  final String text;
  final int count;

  Keno(this.text, this.count);
}
