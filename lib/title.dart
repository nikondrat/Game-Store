import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyTitle extends StatelessWidget {
  final String text;
  const BodyTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 24.sm, fontWeight: FontWeight.bold),
      ),
    );
  }
}
