import 'package:mvvm/models/post_model.dart';

class PostRepository {
  Future<List<Post>> fetchPosts() async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(10, (index) => Post(
      id: index,
      title: 'Post $index',
      body: 'This is the body of post $index.'
    ));
  }
}
