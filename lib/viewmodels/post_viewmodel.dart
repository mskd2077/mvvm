import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../repositories/post_repository.dart';

class PostViewModel extends ChangeNotifier {
  final PostRepository _repository = PostRepository();
  List<Post> _posts = [];
  bool _loading = false;

  List<Post> get posts => _posts;
  bool get loading => _loading;

  Future<void> fetchPosts() async {
    _loading = true;
    notifyListeners();

    _posts = await _repository.fetchPosts();

    _loading = false;
    notifyListeners();
  }

    void addPost(String title, String body) {
    final newPost = Post(id: _posts.length + 1, title: title, body: body);
    _posts.add(newPost);
    notifyListeners();
  }
}
