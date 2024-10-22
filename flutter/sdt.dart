import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String name;
  final String? avatarUrl;
  final bool isUpload;

  const AvatarWidget({
    Key? key,
    required this.name,
    this.avatarUrl,
    this.isUpload = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey[300],
              child: avatarUrl != null
                  ? ClipOval(
                      child: Image.network(
                        avatarUrl!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return _buildInitials();
                        },
                      ),
                    )
                  : _buildInitials(),
            ),
            if (isUpload)
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 12,
                  child: Icon(
                    Icons.upload,
                    color: Colors.red,
                    size: 16,
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          '0944556692', // Đây là số điện thoại bạn muốn hiển thị.
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildInitials() {
    return Text(
      name.isNotEmpty ? name[0].toUpperCase() : '',
      style: TextStyle(
        fontSize: 40,
        color: Colors.white,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Center(
        child: AvatarWidget(
          name: 'Hieu Tao',
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMT3bF0zKir98RK_dAuZgwQJVuBlvty6DGEw&s',
          isUpload: true, // Để ẩn hoặc hiện icon upload.
        ),
      ),
    ),
  ));
}
