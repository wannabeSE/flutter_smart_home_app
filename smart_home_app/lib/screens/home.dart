import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

const double caption1 = 12;
const double body1 = 18;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.38,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xff4c7380),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                ),
              ),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 60, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Good Morning,',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                          Padding(
                            padding: const EdgeInsets.only(right: 24),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Image.asset(
                                'assets/icons/notifcations.png',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Nalarisa',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 110.0),
                  child: Center(
                    child: Container(
                      height: 180,
                      width: 365,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xffd8e4e8)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: Image.asset(
                                    'assets/icons/sun.png',
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                        text: 'May 16,2023 10:05 am',
                                        fontSize: caption1,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400),
                                    CustomText(
                                        text: 'Cloudy',
                                        fontSize: body1,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600),
                                    CustomText(
                                        text: 'Jakarta, Indonesia',
                                        fontSize: caption1,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: CustomText(
                                    text: '19°c',
                                    fontSize: 50,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          const Text(
                            '-----------------------------------------------------',
                            style: TextStyle(color: Color(0xff4c7380)),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomContainer(
                                iconName: 'humidity.svg',
                                unit: '%',
                                weatherElement: 'Humidity',
                                value: '97',
                              ),
                              CustomContainer(
                                value: '7',
                                unit: 'km',
                                weatherElement: 'Visibility',
                                iconName: 'eyes.svg',
                              ),
                              CustomContainer(
                                  value: '3',
                                  unit: 'km/h',
                                  weatherElement: 'NE Wind',
                                  iconName: 'wind.svg')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 16,
            ),

            //power usage container
            Container(
              height: 74,
              width: 342,
              decoration: BoxDecoration(
                  color: const Color(0xffd8e4e8),
                  borderRadius: BorderRadius.circular(15)
                ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PowerUsageContainer(
                    power: '89.9',
                    iconPath: 'lampon.png',
                  ),
                  PowerUsageContainer(
                    power: '100',
                    iconPath: 'ac.png',
                  ),
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PowerUsageContainer extends StatelessWidget {
  const PowerUsageContainer({
    super.key,
    required this.iconPath,
    required this.power,
  });
  final String iconPath, power;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 152,
      decoration: BoxDecoration(
          color: const Color(0xfff4f4f4),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(4.5),
        child: Row(
          children: [
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Image.asset('assets/icons/$iconPath')),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8, 2, 8),
                      child: SizedBox(
                          height: 20,
                          width: 44,
                          child: CustomText(
                            text: power,
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    const SizedBox(
                      height: 12,
                      width: 26,
                      child: CustomText(
                        text: 'KwH',
                        fontFamily: 'Roboto',
                        fontSize: caption1,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                const CustomText(
                    text: 'Total Usage This Month',
                    fontSize: 8,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400)
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.value,
    required this.unit,
    required this.weatherElement,
    required this.iconName,
  });
  final String value, unit, weatherElement, iconName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 3, 6, 3),
      child: Container(
        height: 60,
        width: 96.67,
        decoration: BoxDecoration(
            color: const Color(0xfff4f4f4),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                  child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(25)),
                      child: SvgPicture.asset('assets/icons/$iconName')),
                ),
                CustomText(
                    text: '$value ',
                    fontSize: body1,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600),
                CustomText(
                    text: unit,
                    fontSize: caption1,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600)
              ],
            ),
            CustomText(
                text: weatherElement,
                fontSize: caption1,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400)
          ],
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontFamily,
    required this.fontWeight,
  });

  final String text;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize, fontFamily: fontFamily, fontWeight: fontWeight),
    );
  }
}
