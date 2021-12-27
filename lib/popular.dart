import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularGame {
  String title;
  double rating;
  String icon;
  PopularGame({required this.title, required this.icon, required this.rating});
}

class PopularGames extends StatelessWidget {
  const PopularGames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 180.sm;

    List<PopularGame> games = [
      PopularGame(
          title: 'Angry Birds',
          icon:
              'https://cdnn21.img.ria.ru/images/151101/76/1511017646_167:0:1167:750_1920x0_80_0_0_9b80aaadbff785857d5b8b9aa00bbca5.jpg',
          rating: 4.7),
      PopularGame(
          title: 'Clash of Clans',
          icon:
              'https://play-lh.googleusercontent.com/akv2Bdp7i5Vv-sl9FuP3_dhWpUO80zULf-Pkh6RFleomEp6pZorHuCNm3FbR9oAMunVK',
          rating: 4.4),
      PopularGame(
          title: 'Brawl Stars',
          icon:
              'https://play-lh.googleusercontent.com/EiElcSrd6-o-19roiswSx0AZPzsq6qF3hUGHsSWDl5UVtj7G23DHkneM8ucwqyOmEg',
          rating: 4.6),
    ];

    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: size + 60,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          games[index].icon,
                          isAntiAlias: true,
                          fit: BoxFit.cover,
                          width: size,
                          height: size,
                        ),
                      ),
                      Text(
                        games[index].title,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sm),
                      ),
                      RatingBarIndicator(
                          rating: games[index].rating,
                          unratedColor: Colors.grey,
                          itemSize: 18.sm,
                          itemBuilder: (context, index) {
                            return const Icon(
                              Icons.star,
                              color: Colors.pink,
                            );
                          })
                    ]),
              );
            }));
  }
}
