import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScreenshotsContent extends StatelessWidget {
  const ScreenshotsContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            Text(
              "Screenshots Section",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 200),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              ),
            ),
            SizedBox(height: 24),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _Image(image: "images/screenshots/screen1.png"),
                  _Image(image: "images/screenshots/screen2.png"),
                  _Image(image: "images/screenshots/screen3.png"),
                  _Image(image: "images/screenshots/screen4.png"),
                  _Image(image: "images/screenshots/screen5.png"),
                  _Image(image: "images/screenshots/screen6.png"),
                  _Image(image: "images/screenshots/screen7.png"),
                  _Image(image: "images/screenshots/screen1.png"),
                  _Image(image: "images/screenshots/screen2.png"),
                  _Image(image: "images/screenshots/screen3.png"),
                  _Image(image: "images/screenshots/screen4.png"),
                  _Image(image: "images/screenshots/screen5.png"),
                  _Image(image: "images/screenshots/screen6.png"),
                  _Image(image: "images/screenshots/screen7.png"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  final String image;

  const _Image({Key key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 16),
        Image.asset(image),
        SizedBox(width: 16),
      ],
    );
  }
}
