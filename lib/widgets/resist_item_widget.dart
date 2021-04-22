import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomore/models/resist_item.dart';
import 'package:vibration/vibration.dart';

class ResistItemWidget extends StatelessWidget {
  final ResistItem _item;

  ResistItemWidget(this._item);

  @override
  Widget build(BuildContext context) {
    var color = Color(_item.color);
    var shade = darken(color);
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
                    colors: [color, shade]),
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  _item.title,
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              )),
        ),
        onLongPress: () {
          print("A touch, so nice.");
          Vibration.vibrate(duration: 1500, amplitude: 32)
              .then((_) => Future.delayed(Duration(milliseconds: 500)));
        },
      ),
    );
  }

  darken(Color color) {
    final hsl = HSLColor.fromColor(color);
    return hsl.withLightness((hsl.lightness - .45).clamp(0.0, 1.0)).toColor();
  }
}
