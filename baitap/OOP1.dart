class Member {
  String name, avatar, fullName, phone, email, gender;
  DateTime birthDate;
  List<Post> posts = [];
  Member(this.name, this.avatar, this.fullName, this.birthDate, this.phone, this.email, this.gender);
}

class Post {
  Member author;
  String content;
  List<String> images;
  List<Comment> comments = [];
  Post(this.author, this.content, [this.images = const []]);
}

class Comment {
  Member author;
  String content;
  Comment(this.author, this.content);
}

void main() {
  var member1 = Member('john_doe', 'avatar1.png', 'John Doe', DateTime(1990, 5, 10), '0123456789', 'john@example.com', 'Male');
  var member2 = Member('jane_smith', 'avatar2.png', 'Jane Smith', DateTime(1992, 7, 12), '0987654321', 'jane@example.com', 'Female');
  
  var post1 = Post(member1, 'Hello, first post!', ['image1.png']);
  var comment1 = Comment(member2, 'Great post!');
  
  print('${post1.author.fullName} posted: ${post1.content}\nImages: ${post1.images}');
  print('${comment1.author.fullName} commented: ${comment1.content}');
}
