import 'package:flutter/material.dart';
import 'clippers.dart';

class Base extends StatefulWidget {
  const Base({Key? key}) : super(key: key);

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  bool welcome = true;
  bool stats = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(children: [
          // Grey straight Line . . .
          Positioned(
            top: 0,
            child: Container(
              color: Colors.grey,
              height: 1.5,
              width: MediaQuery.of(context).size.width - 10,
            ),
          ),
          // Date and Time . . .
          Positioned(
              top: 6,
              left: MediaQuery.of(context).size.width * 0.05,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.066,
                child: Column(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 9, 179, 231),
                      height: 2.0,
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    Expanded(child: Container()),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Row(
                        children: [
                          ClipPath(
                            clipper: DateClipper(),
                            child: Container(
                              padding: const EdgeInsets.only(right: 10),
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(144, 27, 138, 172),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3))),
                              width: MediaQuery.of(context).size.width * 0.195,
                              height:
                                  MediaQuery.of(context).size.height * 0.045,
                              child: const Center(
                                child: Text(
                                  'THU, 24 MAR 2022',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 136, 228, 228),
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          const Text(
                            '05:51 PM',
                            style: TextStyle(
                                color: Color.fromARGB(255, 131, 177, 199),
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0),
                          )
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                    Container(
                      color: const Color.fromARGB(255, 9, 179, 231),
                      height: 2.0,
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                  ],
                ),
              )),
          // Parent Border . . .
          Align(
            alignment: Alignment.center,
            child: ClipPath(
                clipper: MyCustomClipper1(),
                child: Container(
                  width: MediaQuery.of(context).size.width - 10,
                  height: MediaQuery.of(context).size.height - 10,
                  color: const Color.fromARGB(255, 9, 179, 231),
                )),
          ),
          // Body Container . . .
          Align(
            alignment: Alignment.center,
            child: ClipPath(
                clipper: MyCustomClipper2(),
                child: Container(
                  width: MediaQuery.of(context).size.width - 13,
                  height: MediaQuery.of(context).size.height - 13,
                  color: Colors.black,
                  child: Stack(children: [
                    // Horiz. line after Q.C . . .
                    Positioned(
                      bottom: MediaQuery.of(context).size.width * 0.05,
                      left: MediaQuery.of(context).size.width * 0.03 +
                          (MediaQuery.of(context).size.width - 13) * 0.2 +
                          10,
                      child: Container(
                        color: const Color.fromARGB(255, 9, 179, 231),
                        height: 1.5,
                        width: (MediaQuery.of(context).size.width - 13) * 0.727,
                      ),
                    ),
                    // Vert. line after Q.C . . .
                    Positioned(
                      bottom: MediaQuery.of(context).size.width * 0.05,
                      left: MediaQuery.of(context).size.width * 0.03 +
                          (MediaQuery.of(context).size.width - 13) * 0.2 +
                          10,
                      child: Container(
                        color: const Color.fromARGB(255, 9, 179, 231),
                        height:
                            (MediaQuery.of(context).size.height - 13) * 0.40,
                        width: 3.0,
                      ),
                    ),
                    // Quick Commands . . .
                    Positioned(
                      bottom: MediaQuery.of(context).size.width * 0.05,
                      left: MediaQuery.of(context).size.width * 0.03 + 6,
                      child: Container(
                        color: const Color.fromARGB(108, 27, 138, 172),
                        height:
                            (MediaQuery.of(context).size.height - 13) * 0.40,
                        width: (MediaQuery.of(context).size.width - 13) * 0.2,
                        child: Column(children: [
                          Container(
                            color: Colors.transparent,
                            width:
                                (MediaQuery.of(context).size.width - 13) * 0.2,
                            height: (MediaQuery.of(context).size.height - 13) *
                                0.06,
                            child: const Center(
                                child: Text(
                              'Quick Commands',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 144, 212, 243),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11,
                                  letterSpacing: 1.2),
                            )),
                          ),
                          SizedBox(
                            height: (MediaQuery.of(context).size.height - 13) *
                                0.34,
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                quickCommandsItem("Make a Call", 0, context),
                                quickCommandsItem("Greet Me", 1, context),
                                quickCommandsItem("Send a Text", 2, context),
                                quickCommandsItem("Launch an App", 3, context),
                                quickCommandsItem("Set an Alarm", 4, context),
                                quickCommandsItem("On Flashlight", 5, context),
                                quickCommandsItem("On Wifi", 6, context),
                                quickCommandsItem("On Bluetooth", 7, context),
                                quickCommandsItem("On Mobile Data", 8, context),
                                quickCommandsItem(
                                    "Activate Camera", 9, context),
                                quickCommandsItem("Capture Sound", 10, context),
                                quickCommandsItem("Schedule Task", 11, context),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                    // Vert. line before Q.C . . .
                    Positioned(
                      bottom: MediaQuery.of(context).size.width * 0.05,
                      left: MediaQuery.of(context).size.width * 0.03,
                      child: Container(
                        color: const Color.fromARGB(255, 9, 179, 231),
                        height:
                            (MediaQuery.of(context).size.height - 13) * 0.40,
                        width: 3.0,
                      ),
                    ),
                    // App Name . . .
                    Positioned(
                        top: MediaQuery.of(context).size.height * 0.12,
                        left: MediaQuery.of(context).size.height * 0.08,
                        child: Column(
                          children: [
                            Container(
                              height: 1,
                              width: 95,
                              color: const Color.fromARGB(255, 86, 2, 241),
                            ),
                            Container(
                              height: 2,
                              width: 95,
                              color: const Color.fromARGB(255, 9, 179, 231),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Helen',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 18, 203, 235),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 5, top: 4, bottom: 4),
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  color: const Color.fromARGB(144, 9, 179, 231),
                                  child: const Text(
                                    'AI',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 161, 215, 240),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1.5),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 2,
                              width: 95,
                              color: const Color.fromARGB(255, 9, 179, 231),
                            ),
                            Container(
                              height: 1,
                              width: 95,
                              color: const Color.fromARGB(255, 86, 2, 241),
                            ),
                          ],
                        )),
                    // Base Pannel . . .
                    Positioned(
                        bottom: 6.0,
                        left: MediaQuery.of(context).size.width * 0.025,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.93,
                          child: Flex(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            direction: Axis.horizontal,
                            children: [
                              ClipPath(
                                clipper: BottomLeftClipper(),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      welcome = false;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 12),
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(144, 27, 138, 172),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3))),
                                    height: MediaQuery.of(context).size.width *
                                            0.05 -
                                        12,
                                    width: MediaQuery.of(context).size.width *
                                        0.23,
                                    child: const Center(
                                      child: Text(
                                        '<< COMMAND CENTER >>',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 131, 177, 199),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 1.1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              ClipPath(
                                clipper: ButtonsClipper(),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      welcome = false;
                                    });
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(144, 27, 138, 172),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3))),
                                    height: MediaQuery.of(context).size.width *
                                            0.05 -
                                        12,
                                    width: MediaQuery.of(context).size.width *
                                        0.23,
                                    child: const Center(
                                      child: Text(
                                        '<< DATABASE >>',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 131, 177, 199),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 1.1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              ClipPath(
                                clipper: ButtonsClipper(),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      welcome = false;
                                    });
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(144, 27, 138, 172),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3))),
                                    height: MediaQuery.of(context).size.width *
                                            0.05 -
                                        12,
                                    width: MediaQuery.of(context).size.width *
                                        0.23,
                                    child: const Center(
                                      child: Text(
                                        '<< PROJECTS >>',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 131, 177, 199),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 1.1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              ClipPath(
                                clipper: BottomRightClipper(),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      welcome = false;
                                    });
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(144, 27, 138, 172),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3))),
                                    height: MediaQuery.of(context).size.width *
                                            0.05 -
                                        12,
                                    width: MediaQuery.of(context).size.width *
                                        0.23,
                                    child: const Center(
                                      child: Text(
                                        '<< AMORY >>',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 131, 177, 199),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 1.1),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                    // Top Pannel . . .
                    Positioned(
                        top: 6,
                        right: MediaQuery.of(context).size.width * 0.025,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.58,
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              ClipPath(
                                clipper: TopLeftClipper(),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      welcome = false;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(144, 27, 138, 172),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3))),
                                    height: MediaQuery.of(context).size.width *
                                            0.05 -
                                        12,
                                    width: MediaQuery.of(context).size.width *
                                        0.20,
                                    child: const Center(
                                      child: Text(
                                        '<< PEOPLE >>',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 131, 177, 199),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 1.1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              ClipPath(
                                clipper: TopButtonsClipper(),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      welcome = false;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(144, 27, 138, 172),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3))),
                                    height: MediaQuery.of(context).size.width *
                                            0.05 -
                                        12,
                                    width: MediaQuery.of(context).size.width *
                                        0.173,
                                    child: const Center(
                                      child: Text(
                                        '<< CHAT >>',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 131, 177, 199),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 1.1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(child: Container()),
                              ClipPath(
                                clipper: TopRightClipper(),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      welcome = false;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(144, 27, 138, 172),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3))),
                                    height: MediaQuery.of(context).size.width *
                                            0.05 -
                                        12,
                                    width: MediaQuery.of(context).size.width *
                                        0.20,
                                    child: const Center(
                                      child: Text(
                                        '<< ME >>',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 131, 177, 199),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900,
                                            letterSpacing: 1.1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                    // Stats Bar . . .
                    Positioned(
                      right: 7.0,
                      top: MediaQuery.of(context).size.height / 10,
                      child: ClipPath(
                        clipper: CenterRightClipper(),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (stats) {
                                stats = false;
                              } else {
                                stats = true;
                              }
                            });
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(111, 9, 179, 231),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            height: (MediaQuery.of(context).size.height - 13) *
                                0.77,
                            width: 12.0,
                            child: const Center(
                                child: CircleAvatar(
                              radius: 3,
                              backgroundColor:
                                  Color.fromARGB(255, 131, 177, 199),
                            )),
                          ),
                        ),
                      ),
                    ),
                    // Stats . . .
                    Visibility(
                      visible: stats ? true : false,
                      child: Positioned(
                        right: 17.5,
                        top: MediaQuery.of(context).size.height / 10,
                        child: ClipPath(
                          clipper: StatsClipper(),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(108, 27, 138, 172),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4),
                                    bottomLeft: Radius.circular(4))),
                            height: (MediaQuery.of(context).size.height - 13) *
                                0.77,
                            width:
                                (MediaQuery.of(context).size.width - 13) * 0.25,
                            child: Column(children: [
                              Container(
                                color: Colors.transparent,
                                width:
                                    (MediaQuery.of(context).size.width - 13) *
                                        0.2,
                                height:
                                    (MediaQuery.of(context).size.height - 13) *
                                        0.06,
                                child: const Center(
                                    child: Text(
                                  '< STATS >',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 144, 212, 243),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 11,
                                      letterSpacing: 1.2),
                                )),
                              ),
                              SizedBox(
                                height:
                                    (MediaQuery.of(context).size.height - 13) *
                                        0.70,
                                child: ListView(
                                  scrollDirection: Axis.vertical,
                                  children: const [],
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                    ),
                    // Welcome . . .
                    Visibility(
                      visible: welcome ? true : false,
                      child: Align(
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.37,
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                color: const Color.fromARGB(255, 9, 179, 231),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: ClipPath(
                                clipper: WelcomeClipper1(),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.371,
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  color: Colors.black,
                                  child: const Center(
                                    child: Text(
                                      'GOOD DAY MR. VINCENT',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 25, 184, 190),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                          letterSpacing: 1.7),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                )),
          ),
        ]),
      ),
    );
  }

  Widget quickCommandsItem(String text, int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          switch (index) {
            case 1:
              welcome = true;
              break;
            default:
          }
        });
      },
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(150, 16, 133, 187),
            borderRadius: BorderRadius.all(Radius.circular(2.0))),
        margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 1.5),
        padding: const EdgeInsets.only(left: 5),
        height: (MediaQuery.of(context).size.height - 13) * 0.07,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: const TextStyle(
                color: Color.fromARGB(255, 143, 228, 240),
                fontWeight: FontWeight.w700,
                fontSize: 11,
                letterSpacing: 1.2),
          ),
        ),
      ),
    );
  }
}
