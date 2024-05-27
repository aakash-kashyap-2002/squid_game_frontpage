import 'package:flutter/material.dart';
import 'package:squid_game_frontpage/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileNavBar(),
      desktop: deskTopNavBar(),
    );
  }
}

Widget mobileNavBar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      children: [const Icon(Icons.menu), navLogo()],
    ),
  );
}

Widget deskTopNavBar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.menu),
        Row(
          children: [
            navButton('Home'),
            navButton('About'),
            navButton('Cast'),
            navButton('Trailor')
          ],
        ),
        navLogo()
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
          onPressed: () {},
          child: Text(text,
              style: TextStyle(
                  color: text == 'Home' ? Colors.red : Colors.white,
                  fontSize: 18))));
}

Widget navLogo() {
  return Container(
    height: 60,
    width: 180,
    child: Image.asset(netflix),
  );
}
