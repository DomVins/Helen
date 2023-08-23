import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:green_tech/base.dart';
import 'package:green_tech/clippers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Helen IAC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.black,
        splash: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 100,
                height: 30,
                color: const Color.fromARGB(255, 9, 179, 231),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ClipPath(
                clipper: WelcomeClipper1(),
                child: Container(
                  width: 100,
                  height: 30,
                  color: Colors.black,
                  child: const Center(
                    child: Text(
                      'HELEN AI',
                      style: TextStyle(
                          color: Color.fromARGB(255, 25, 184, 190),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 2.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        duration: 2000,
        nextScreen: const Base(),
      ),
    );
  }
}
