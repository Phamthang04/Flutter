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
          title: Text('Strawberry Pavlova Recipe'),
        ),
        body: PavlovaScreen(),
      ),
    );
  }
}

class PavlovaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Left Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Title
                Text(
                  'Strawberry Pavlova',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                // Description
                Text(
                  'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                  'It features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                // Reviews
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star, color: Colors.red),
                    Icon(Icons.star_border),
                    SizedBox(width: 8),
                    Text('170 Reviews'),
                  ],
                ),
                SizedBox(height: 16),
                // Info Table
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.kitchen, color: Colors.green), // Icon 25m
                        Text('PREP:'),
                        Text('25 min'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.timer, color: Colors.green), // Icon 1hr
                        Text('COOK:'),
                        Text('1 hr'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.restaurant, color: Colors.green),
                        Text('FEEDS:'),
                        Text('4-6'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Right Image
          Expanded(
            child: Image.network(
              'https://images.squarespace-cdn.com/content/v1/53883795e4b016c956b8d243/1551438228969-H0FPV1FO3W5B0QL328AS/chup-anh-thuc-an-1.jpg',
              fit: BoxFit.cover,
              alignment: Alignment.topCenter, // Căn ảnh
            ),
          ),
        ],
      ),
    );
  }
}
