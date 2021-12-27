import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gast/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 140.sm;

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
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 12),
              child: Text(
                'Category',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sm,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: size,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryItem(
                      index: index,
                    );
                  }),
            )
          ],
        ));
  }
}
