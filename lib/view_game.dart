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
    List description = [
      'Cyberpunk 2077 is an adventure role-playing game set in the metropolis of Night City, where power, luxury and body modifications are valued above all else. You play as V, a mercenary in search of a device that allows you to gain immortality. You will be able to change the cyberimplants, skills and style of play of your character, exploring an open world where your actions affect the course of the plot and everything that surrounds you.',
      'The little spirit of Ori is familiar with all kinds of dangers firsthand. His young friend, Owl Ku, found herself in trouble after an ill-fated flight. Ori will have to reunite his family, save the distorted land and find out what fate has in store for him — and courage alone is not enough for this. Embark on a journey through the vast expanses of a hand-drawn world, where you will meet new friends and enemies. Ori and the Will of the Wisps continues the good tradition of Moon Studios — here an exciting gameplay with original music performed by an orchestra is closely intertwined with a touching plot.',
      'VALORANT is a world-famous competitive tactical shooter with 5 vs 5 matches, in which competent use of skills, accurate shooting and well-coordinated teamwork will help you outwit, outplay and outshine the enemy.'
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF00111c),
      bottomSheet: Container(
        color: const Color(0xFF00111c),
        height: 80.sm,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.pink)),
          onPressed: () {},
          child: const Text('Install'),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            iconSize: 48.sm,
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Ionicons.arrow_back_circle,
            )),
        backgroundColor: const Color(0xFF00111c),
        elevation: 0,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              images[index],
              isAntiAlias: true,
              fit: BoxFit.cover,
              height: height,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.sm,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text('Size: 1.6GB',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20.sm,
                )),
          ),
          Text('Game Description',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26.sm,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              description[index],
              style: TextStyle(color: Colors.grey.shade600, fontSize: 18.sm),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text('Rating and Review',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.sm,
                )),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: 0,
            leading: Text(
              '4.8',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 44.sm,
                  fontWeight: FontWeight.bold),
            ),
            title: RatingBarIndicator(
                rating: 4.8,
                unratedColor: Colors.grey,
                itemSize: 28.sm,
                itemBuilder: (context, index) {
                  return const Icon(
                    Icons.star,
                    color: Colors.pink,
                  );
                }),
            subtitle: Text(
              '324 review',
              style: TextStyle(
                  color: Colors.grey.shade600, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 80.sm,
          )
        ],
      ),
    );
  }
}
