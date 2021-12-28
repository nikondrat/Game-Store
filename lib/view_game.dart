import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';

class ViewGamePage extends StatelessWidget {
  final int index;
  final String name;
  const ViewGamePage({Key? key, required this.index, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = 280.sm;
    List images = [
      'https://upload.wikimedia.org/wikipedia/ru/b/bb/%D0%9E%D0%B1%D0%BB%D0%BE%D0%B6%D0%BA%D0%B0_%D0%BA%D0%BE%D0%BC%D0%BF%D1%8C%D1%8E%D1%82%D0%B5%D1%80%D0%BD%D0%BE%D0%B9_%D0%B8%D0%B3%D1%80%D1%8B_Cyberpunk_2077.jpg',
      'https://upload.wikimedia.org/wikipedia/ru/b/b2/Ori_and_the_Blind_Forest_Logo.jpg',
      'https://svirtus.cdnvideo.ru/bPXF5WMhhP-FK-EzRs-kBYRNG1s=/0x0:1920x1080/573x325/filters:quality(100)/https://hb.bizmrg.com/cybersportru-media/d9/d961c088c560e44f8b9e58f590c0fad7.jpg?m=da794cfbfeb17e14472b1ab07f3d33f7'
    ];
    return Scaffold(
      backgroundColor: const Color(0xFF00111c),
      body: Stack(children: [
        ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            Image.network(
              images[index],
              isAntiAlias: true,
              fit: BoxFit.cover,
              height: height,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.sm,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: RatingBarIndicator(
                  rating: 4.8,
                  unratedColor: Colors.grey,
                  itemSize: 28.sm,
                  itemBuilder: (context, index) {
                    return const Icon(
                      Icons.star,
                      color: Colors.pink,
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Text('Size: 1.6GB',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 20.sm,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Text('Game Description',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.sm,
                  )),
            ),
          ],
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: AppBar(
            leading: IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                iconSize: 48.sm,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Ionicons.arrow_back_circle,
                )),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ]),
    );
  }
}
