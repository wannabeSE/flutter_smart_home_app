import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/constants/data.dart';
import 'package:smart_home_app/constants/fontsize_and_colors.dart';
import 'package:smart_home_app/screens/components/navbar.dart';
import 'package:smart_home_app/screens/home.dart';

class UsageScreen extends StatelessWidget {
  const UsageScreen({super.key});
  List<String> get weekDays =>
      const ['Day', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 360,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xff4c7380),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Usage',
                            style: TextStyle(
                                fontFamily: font,
                                fontSize: heading2,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: const Color(0xffd8e4e8),
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset('assets/icons/filter.png'),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const SizedBox(
                      height: 22,
                      width: 350,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Usage this Week',
                            style: TextStyle(
                                fontFamily: font,
                                fontSize: body3,
                                fontWeight: FontWeight.w600,
                                color: surface2),
                          ),
                          Text(
                            '2500 watt',
                            style: TextStyle(
                                fontFamily: font,
                                fontSize: body2,
                                fontWeight: FontWeight.w400,
                                color: surface2),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(35, 10, 0, 0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'KwH',
                            style: TextStyle(
                                fontSize: caption2,
                                fontFamily: font,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 15),
                      height: 200,
                      width: 345,
                      child: LineChart(LineChartData(
                          maxX: 6,
                          minY: 0,
                          maxY: 250,
                          gridData: FlGridData(
                            show: true,
                            getDrawingHorizontalLine: (value) =>
                                const FlLine(color: surface2, strokeWidth: 1),
                          ),
                          borderData: FlBorderData(show: false),
                          lineBarsData: [
                            LineChartBarData(
                              spots: [
                                const FlSpot(0, 100),
                                const FlSpot(1, 120),
                                const FlSpot(2, 210),
                                const FlSpot(3, 102),
                                const FlSpot(4, 99),
                                const FlSpot(5, 150),
                                const FlSpot(6, 145)
                              ],
                              isCurved: true,
                              color: surface2,
                            )
                          ],
                          titlesData: FlTitlesData(
                              //show: true,
                              rightTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              topTitles: const AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                      showTitles: true,
                                      getTitlesWidget: (value, meta) {
                                        return Text(
                                          weekDays[value.toInt()],
                                          style: const TextStyle(
                                              color: surface2,
                                              fontFamily: font,
                                              fontSize: caption1,
                                              fontWeight: FontWeight.w700),
                                        );
                                      }))))),
                    ),
                  ],
                ),
              ),
            ),
            Row(children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Total Today',
                  style: TextStyle(
                      fontFamily: font,
                      fontSize: body1,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                child: Container(
                  height: 22,
                  width: 21,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xff4c7380),
                  ),
                  child: const Center(
                    child: Text(
                      '4',
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
                width: 178,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
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
            ]),
            SizedBox(
              height: 546,
              width: 375,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                          height: 88,
                          width: 343,
                          decoration: BoxDecoration(
                              color: surface2,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                      height: 56,
                                      width: 56,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Image.asset(
                                          'assets/icons/${deviceIcons[index]}'),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                        text: devices[index],
                                        fontSize: body3,
                                        fontFamily: font,
                                        fontWeight: FontWeight.w600),
                                    CustomText(
                                        text: locations[index],
                                        fontSize: caption1,
                                        fontFamily: font,
                                        fontWeight: FontWeight.w400),
                                    Row(
                                      children: [
                                        Text(
                                          unit[index],
                                          style: const TextStyle(
                                              fontFamily: font,
                                              fontSize: caption1,
                                              fontWeight: FontWeight.w400,
                                              color: textDisabled),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8),
                                          child: Text(
                                            '|',
                                            style:
                                                TextStyle(color: textDisabled),
                                          ),
                                        ),
                                        Text(
                                          date[index],
                                          style: const TextStyle(
                                              fontFamily: font,
                                              fontSize: caption1,
                                              fontWeight: FontWeight.w400,
                                              color: textDisabled),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(70, 16, 0, 0),
                                child: Column(
                                  children: [
                                    Text(
                                      '${usage[index]} Kw/h',
                                      style: const TextStyle(
                                          fontFamily: font,
                                          fontSize: body3,
                                          fontWeight: FontWeight.w400,
                                          color: main2),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/icons/${state[index]}',
                                          color: main1,
                                          height: 14,
                                          width: 14,
                                        ),
                                        Text(
                                          ' ${value[index]}',
                                          style: const TextStyle(
                                              fontFamily: font,
                                              fontSize: caption1,
                                              fontWeight: FontWeight.w400,
                                              color: main1),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
