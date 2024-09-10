import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/post_viewmodel.dart';
import 'views/post_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter MVVM Complex',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: PostView(),
      ),
    );
  }
}
