import 'package:flutter/material.dart';
import 'package:gast/category.dart';
import 'package:gast/popular.dart';
import 'package:gast/recommended.dart';
import 'package:gast/title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF00111c),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF00111c),
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          title: const Text('Gast'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: const [
            BodyTitle(text: 'Category'),
            Category(),
            BodyTitle(text: 'Recommended'),
            RecommendedWidget(),
            BodyTitle(text: 'Popular Games'),
            PopularGames()
          ],
        ));
  }
}
