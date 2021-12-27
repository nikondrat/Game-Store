import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gast/view_game.dart';
import 'package:ionicons/ionicons.dart';

class Platforms {
  bool windows;
  bool apple;
  bool linux;
  bool xbox;
  bool playstation;
  Platforms(
      {this.windows = false,
      this.apple = false,
      this.linux = false,
      this.xbox = false,
      this.playstation = false});
}

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = 280.sm;
    double width = 320.sm;
    List games = [
      'Cyberpunk 2077',
      'Ori and the Will of the Wisps',
      'Valorant'
    ];
    List images = [
      'https://www.cyberpunk.net/build/images/home3/screen-image-about-b-6e3102b1.jpg',
      'https://cdn.akamai.steamstatic.com/steam/apps/1057090/header.jpg?t=1612897638',
      'https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2021/3/12/ozsik7iaiqjb7bwdhbmq/valorant'
    ];
    List<Platforms> platforms = [
      Platforms(windows: true, xbox: true, playstation: true),
      Platforms(windows: true, apple: true, xbox: true, playstation: true),
      Platforms(windows: true, apple: true, linux: true)
    ];

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
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ViewGamePage())),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            images[index],
                            isAntiAlias: true,
                            fit: BoxFit.fill,
                            width: width,
                            height: height - 100,
                          ),
                        ),
                        Text(
                          games[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sm,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            platforms[index].windows == true
                                ? const Icon(
                                    Ionicons.logo_windows,
                                    color: Colors.white,
                                  )
                                : Container(),
                            const SizedBox(
                              width: 2,
                            ),
                            platforms[index].apple == true
                                ? const Icon(
                                    Ionicons.logo_apple,
                                    color: Colors.white,
                                  )
                                : Container(),
                            const SizedBox(
                              width: 2,
                            ),
                            platforms[index].linux == true
                                ? const Icon(
                                    Ionicons.logo_tux,
                                    color: Colors.white,
                                  )
                                : Container(),
                            const SizedBox(
                              width: 2,
                            ),
                            platforms[index].xbox == true
                                ? const Icon(
                                    Ionicons.logo_xbox,
                                    color: Colors.white,
                                  )
                                : Container(),
                            const SizedBox(
                              width: 2,
                            ),
                            platforms[index].playstation == true
                                ? const Icon(
                                    Ionicons.logo_playstation,
                                    color: Colors.white,
                                  )
                                : Container(),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Install'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                        )
                      ]),
                ),
              );
            }));
  }
}
