import 'package:clockapp/clock_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE,d MMM').format(now);
    var timezoneString = now.timeZoneOffset.toString().split('.').first;
    var offsetsign = '.';
    if (!timezoneString.startsWith('-')) offsetsign = '+';
    print(timezoneString);
    return Scaffold(
      backgroundColor: const Color(0xFF2D2F41),
      body: Row(children: [
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          buildMenuButton(
            image: 'assets/clock_icon.png',
            title: 'Clock',
          ),
          buildMenuButton(
            image: 'assets/alarm_icon.png',
            title: 'Alarm',
          ),
          buildMenuButton(
            image: 'assets/timer_icon.png',
            title: 'Timer',
          ),
          buildMenuButton(
            image: 'assets/stopwatch_icon.png',
            title: 'Stopwatch',
          )
        ]),
        VerticalDivider(
          color: Color.fromARGB(40, 255, 255, 255),
          width: 1,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: const Text(
                    'Clock',
                    style: TextStyle(
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 24),
                  ),
                ),
                Flexible(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        formattedTime,
                        style: TextStyle(
                            fontFamily: 'avenir',
                            color: Colors.white,
                            fontSize: 64),
                      ),
                      Text(
                        formattedDate,
                        style: TextStyle(
                            fontFamily: 'avenir',
                            color: Colors.white,
                            fontSize: 16),
                      ),
                      Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Align(
                              alignment: Alignment.center,
                              child: ClockView(
                                size: MediaQuery.of(context).size.height / 4,
                              ))),
                      Flexible(
                        child: const Text(
                          'Timezone',
                          style: TextStyle(
                              fontFamily: 'avenir',
                              color: Colors.white,
                              fontSize: 24),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.language,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'UTC' + offsetsign + timezoneString,
                            style: TextStyle(
                                fontFamily: 'avenir',
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

// ignore: camel_case_types
class buildMenuButton extends StatelessWidget {
  buildMenuButton({
    super.key,
    required this.title,
    required this.image,
  });
  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          Image.asset(
            image,
            scale: 1.5,
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: 'avenir', color: Colors.white, fontSize: 14),
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
