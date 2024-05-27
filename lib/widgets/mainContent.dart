import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:squid_game_frontpage/utils/constants.dart';
import 'package:squid_game_frontpage/widgets/navbar.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContent();
}

class _MainContent extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileMainContent(),
      desktop: desktopMainContent(),
    );
  }
}

Widget mobileMainContent() {
  return Container();
}

Widget desktopMainContent() {
  return Expanded(
    child: Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //===== Left side content =======
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(squidgame),
                  const SizedBox(height: 40),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(figures),
                        const SizedBox(width: 20),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Life is like a game, there are many players. \nIf you don’t play with them, they’ll play with you...',
                                style: TextStyle(
                                  fontSize: w!/70,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  const Icon(Icons.trending_up, color: Colors.white,),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Trending  #1',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: w!/70,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  //continue watching
                  Container(
                    height: 42,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(40),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(const Color(0xffE50914))
                      ),
                      onPressed: (){}, 
                      child: const Text(
                        'Continue Watching',
                        style: TextStyle(
                          letterSpacing: 1.2, fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  //navButtons S1 E9 2021 imdb 8.9
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      navButton('S1'),
                      navButton('E9'),
                      navButton('2021'),
                      Image.asset(imdb),
                      navButton('8.2'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //===== Right side content =======
          Expanded(
            child: Container(
              child: Image.asset(squid),
            ),
          ),
        ],
      ),
    ),
  );
}
