import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';

class CategoryItem extends StatelessWidget {
  final int index;
  const CategoryItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List icons = [
      Ionicons.cube_outline,
      Ionicons.shapes_outline,
      Ionicons.speedometer_outline,
      Ionicons.compass_outline,
    ];
    List names = ['3d Games', '2d Games', 'Racing', 'Adventure'];

    double size = 140.sm;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade800,
          borderRadius: BorderRadius.circular(12)),
      width: size,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 40.sm,
            backgroundColor: Colors.black54,
            child: Icon(
              icons[index],
              size: 50.sm,
              color: Colors.pinkAccent.shade100,
            ),
          ),
          Text(
            names[index],
            style: TextStyle(color: Colors.white, fontSize: 18.sm),
          )
        ],
      ),
    );
  }
}
