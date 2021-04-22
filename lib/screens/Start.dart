import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class StartScreen extends StatelessWidget {
  static const routeName = "/";
  final colors = [Colors.green, Colors.orange, Colors.red, Colors.purple, Colors.teal];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 30),
                  child: CarouselSlider(
                    options: CarouselOptions(aspectRatio: 1 / 3),
                    items: colors.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: GestureDetector(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                        colors: [i, i.shade900]
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text(
                                        'Resist that ciggarette',
                                        style: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.w700),
                                      ),
                                    )),
                              ),
                              onLongPress: () {
                                print("A touch, so nice.");
                                Vibration.vibrate(duration: 1500, amplitude: 32)
                                    .then((_) => Future.delayed(
                                        Duration(milliseconds: 500)));
                              },
                            ),
                          );
                        },
                      );
                    }).toList(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
