import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

const double caption1 = 12;
const double body1 = 18;
const double body2 = 16;
const double body3 = 14;
const String font = 'Roboto';

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
                          SizedBox(
                            width: 306,
                            child: SvgPicture.asset('assets/icons/line.svg'),
                          ),
                          const SizedBox(
                            height: 9,
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
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/icons/new_sun.png'),
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 74,
              width: 342,
              decoration: BoxDecoration(
                  color: const Color(0xffd8e4e8),
                  borderRadius: BorderRadius.circular(15)),
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
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: CustomText(
                      text: 'Rooms',
                      fontSize: body1,
                      fontFamily: font,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: const Color(0xff4c7380)),
                      onPressed: () {},
                      child: const CustomText(
                        text: 'See All',
                        fontFamily: font,
                        fontSize: body2,
                        fontWeight: FontWeight.w600,
                      )),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RoomContainer(
                  temperature: '19°',
                  room: 'Living Room',
                  connectedDevices: '5',
                  iconPath: 'assets/icons/couch_lamp.png',
                ),
                RoomContainer(
                    temperature: '12°',
                    iconPath: 'assets/icons/bed.png',
                    room: 'Bedroom',
                    connectedDevices: '8')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: CustomText(
                      text: 'Active',
                      fontSize: body1,
                      fontFamily: font,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                  child: Container(
                    height: 22,
                    width: 21,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xff4c7380),
                    ),
                    child: const Center(
                      child: Text(
                        '6',
                        style: TextStyle(
                            fontFamily: font,
                            fontSize: body3,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 213,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: const Color(0xff4c7380)),
                      onPressed: () {},
                      child: const CustomText(
                        text: 'See All',
                        fontFamily: font,
                        fontSize: body2,
                        fontWeight: FontWeight.w600,
                      )),
                )
              ],
            ),
            Row(
              children: [ActiveContainer()],
            )
          ],
        ),
      ),
    );
  }
}

class ActiveContainer extends StatelessWidget {
  const ActiveContainer({
    // required this.icon,
    // required this.
    super.key,
  });
  // TextSpan ts;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 141,
      width: 165,
      decoration: BoxDecoration(
          color: const Color(0xff9a7265),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  height: 75,
                  width: 75.84,
                  child: Image.asset('assets/icons/cooling.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 26.5),
                child: SizedBox(
                  height: 52,
                  width: 72,
                  child: Column(
                    children: [
                      Text(
                        'Temperature',
                        style: TextStyle(
                            fontFamily: font,
                            fontSize: caption1,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 36.0),
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                            text: '19°',
                            style: TextStyle(
                                fontFamily: font,
                                fontSize: body1,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          TextSpan(
                              text: 'c',
                              style: TextStyle(
                                  fontFamily: font,
                                  fontSize: caption1,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white))
                        ])),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text(
                      'AC',
                      style: TextStyle(
                          fontFamily: font,
                          fontSize: body1,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 4, 16, 0),
                    child: Text(
                      'Living Room',
                      style: TextStyle(
                          fontFamily: font,
                          fontSize: caption1,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: SizedBox(
                    height: 24,
                    width: 55,
                    child: Image.asset('assets/icons/off.png')),
              )
            ],
          )
        ],
      ),
    );
  }
}

class RoomContainer extends StatelessWidget {
  const RoomContainer({
    required this.temperature,
    required this.iconPath,
    required this.room,
    required this.connectedDevices,
    super.key,
  });
  final String temperature, iconPath, room, connectedDevices;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 165.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffd8e4e8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 0, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 21,
                width: 44,
                decoration: BoxDecoration(
                    color: const Color(0xff4c7380),
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: temperature,
                        style: const TextStyle(
                            fontSize: body3,
                            fontFamily: font,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                    const TextSpan(
                        text: 'c',
                        style: TextStyle(
                            fontSize: caption1,
                            fontFamily: font,
                            fontWeight: FontWeight.w400,
                            color: Colors.white))
                  ])),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(iconPath),
          ),
          SizedBox(
            height: 21,
            width: 112,
            child: Center(
              child: CustomText(
                  text: room,
                  fontSize: body1,
                  fontFamily: font,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
              height: 18,
              width: 65,
              child: Row(
                children: [
                  Container(
                    height: 16,
                    width: 18,
                    decoration: BoxDecoration(
                        color: const Color(0xffffe266),
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: CustomText(
                          text: connectedDevices,
                          fontSize: caption1,
                          fontFamily: font,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const CustomText(
                      text: 'devices',
                      fontSize: caption1,
                      fontFamily: font,
                      fontWeight: FontWeight.w400)
                ],
              ))
        ],
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
