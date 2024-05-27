import 'package:flutter/material.dart';
import 'package:squid_game_frontpage/utils/constants.dart';
import 'package:squid_game_frontpage/widgets/mainContent.dart';
import 'package:squid_game_frontpage/widgets/navbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 0.0),// 10% of the width, so there are ten blinds.
              colors: <Color>[
                Color(0xffD00070),
                Color(0xff000000)
              ] // red to yellow
            ),
            image: DecorationImage(
              image: AssetImage(bg),
              fit: BoxFit.cover,
            ),
            color: Colors.pink,
          ),
          child: const Column(
            children: [
              Navbar(),
              SizedBox(height: 100),
              MainContent(),
            ],
          ),
        ),
      ),
    );
  }
}
