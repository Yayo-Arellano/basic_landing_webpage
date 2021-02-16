import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

const youtubeVideo = 'https://www.youtube.com/embed/k32xyP3KuWE';

class FeaturesContent extends StatelessWidget {
  const FeaturesContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ui.platformViewRegistry.registerViewFactory(
        'youtube-video',
        (int viewId) => IFrameElement()
          ..src = youtubeVideo
          ..style.border = 'none');

    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            Text(
              "Features Section",
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
            Container(
              width: 800,
              height: 450,
              child: HtmlElementView(viewType: 'youtube-video'),
            ),
          ],
        ),
      ),
    );
  }
}
