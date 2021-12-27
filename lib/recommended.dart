import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = 180.sm;
    double width = 300.sm;
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: height,
        child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height: height,
                    width: width,
                    child: Image.network(
                      'https://www.cyberpunk.net/build/images/home3/screen-image-about-b-6e3102b1.jpg',
                      isAntiAlias: true,
                    ),
                  ),
                ),
              );
            }));
  }
}
