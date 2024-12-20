import 'package:flutter/material.dart';

void main() {
  runApp(MessengerCloneApp());
}

class MessengerCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_usernameController.text == 'thangtienti' && _passwordController.text == 'thangtienti') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MessengerCloneScreen()),
      );
    } 
    else {
      // Thông báo nếu đăng nhập sai
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Username hoặc Password không đúng!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng Nhập'),
        backgroundColor: const Color.fromARGB(255, 216, 218, 231),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text('Đăng Nhập'),
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 240, 239, 240)),
            ),
          ],
        ),
      ),
    );
  }
}

class MessengerCloneScreen extends StatefulWidget {
  @override
  _MessengerCloneScreenState createState() => _MessengerCloneScreenState();
}

class _MessengerCloneScreenState extends State<MessengerCloneScreen> {
  final List<String> stories = ['Quang Anh', 'Huyen anh', 'Linh chi', 'Bao Han', 'Baby'];
  List<ChatItem> chatItems = [
    ChatItem(
      name: 'Quang anh',
      message: 'ban dang lam gi do',
      avatarUrl: 'https://inkythuatso.com/uploads/thumbnails/800/2022/05/anh-gai-xinh-2k4-inkythuatso-35-07-15-23-54.jpg',
    ),
    ChatItem(
      name: 'Huyen anh',
      message: 'Di choi khong?',
      avatarUrl: 'https://inkythuatso.com/uploads/thumbnails/800/2022/05/anh-gai-xinh-2k4-inkythuatso-35-07-15-23-54.jpg',
    ),
    ChatItem(
      name: 'Linh chi',
      message: 'Anh có người iu chưa',
      avatarUrl: 'https://inkythuatso.com/uploads/thumbnails/800/2022/05/anh-gai-xinh-2k4-inkythuatso-35-07-15-23-54.jpg',
    ),
    ChatItem(
      name: 'Bao han',
      message: 'Làm người iu em nhá',
      avatarUrl: 'https://inkythuatso.com/uploads/thumbnails/800/2022/05/anh-gai-xinh-2k4-inkythuatso-35-07-15-23-54.jpg',
    ),
  ];

  void _removeChat() {
    if (chatItems.isNotEmpty) {
      setState(() {
        chatItems.removeAt(0); // Xóa phần tử đầu tiên
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messenger'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          // Thanh tìm kiếm
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Tìm kiếm...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),

          // Danh sách story
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://inkythuatso.com/uploads/thumbnails/800/2022/05/anh-gai-xinh-2k4-inkythuatso-35-07-15-23-54.jpg'),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(stories[index]),
                  ],
                );
              },
            ),
          ),

          // Danh sách tin nhắn
          Expanded(
            child: ListView.builder(
              itemCount: chatItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(chatItems[index].avatarUrl),
                    radius: 25,
                  ),
                  title: Text(
                    chatItems[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(chatItems[index].message),
                );
              },
            ),
          ),
        ],
      ),

      // Thanh điều hướng dưới cùng
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Story',
          ),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
      ),

      // Nút FloatingActionButton để xóa phần tử
      floatingActionButton: FloatingActionButton(
        onPressed: _removeChat,
        child: Icon(Icons.remove),
        backgroundColor: Colors.red,
      ),
    );
  }
}

class ChatItem {
  final String name;
  final String message;
  final String avatarUrl;

  ChatItem({
    required this.name,
    required this.message,
    required this.avatarUrl,
  });
}
