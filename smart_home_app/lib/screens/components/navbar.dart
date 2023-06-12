import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

int currentIndex = 0;
List navText = ['Home', 'Smart', 'Usage', 'User'];
List icons = ['home.png', 'net.png', 'pie.png', 'user.png'];
List activeIcons = [
  'home_fill.png',
  'net_fill.png',
  'pie_fill.png',
  'user_fill.png'
];

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 350,
      padding: const EdgeInsets.symmetric(horizontal: 37.5),
      decoration: BoxDecoration(
          color: const Color(0xff4c7380),
          borderRadius: BorderRadius.circular(10)),
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            if (index == 0) {
              Navigator.pushNamed(context, '/home');
            } else if (index == 1) {
              Navigator.pushNamed(context, '/room');
            }
            else if (index == 2) {
              Navigator.pushNamed(context, '/room');
            }
            else {
              Navigator.pushNamed(context, '/room');
            }
            setState(() {
              currentIndex = index;
            });
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                height: 56,
                width: index == currentIndex ? 96 : 56,
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        children: [
                          currentIndex == index
                              ? Image.asset(
                                  'assets/icons/${activeIcons[index]}')
                              : Image.asset('assets/icons/${icons[index]}'),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                            ),
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Center(
                              child: Text(
                                index == currentIndex
                                    ? '${navText[index]}'
                                    : '',
                                style: const TextStyle(
                                  color: Color(0xff4c7380),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
