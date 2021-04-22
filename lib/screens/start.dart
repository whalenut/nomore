import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nomore/dummy_data.dart';
import 'package:nomore/widgets/resist_item_widget.dart';

class StartScreen extends StatelessWidget {
  static const routeName = "/";
  final resistItems = DUMMY_DATA;

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
                  items: resistItems.map((ri) {
                    return Builder(
                      builder: (BuildContext context) {
                        return ResistItemWidget(ri);
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
