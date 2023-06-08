import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4c7380),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 60, 0, 70),
            child: Text(
              'smartme',
              style: TextStyle(
                  color: Color(0xffd8e4e8),
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Welcome Home',
              style: TextStyle(
                  color: Color(0xffd8e4e8),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 28),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "no matter how far you go, \nhome will be your destination to return to.\nlet's make your home comfortable",
              style: TextStyle(
                  color: Color(0xffd8e4e8),
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 66.0),
            child: SizedBox(
              height: 260,
              width: 362.27,
              child: Image(image: AssetImage('assets/icons/kid.png')),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: SizedBox(
                  height: 70,
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff9a7265),
                        foregroundColor: Colors.white,
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)
                            )
                          ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/homeScreen');
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Next',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: Image.asset(
                              'assets/icons/next.png',
                              color: Colors.white,
                            ),
                          )
                        ]
                      ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
