import 'package:basic_landing_webpage/src/content/contact_content.dart';
import 'package:basic_landing_webpage/src/content/feature_content.dart';
import 'package:basic_landing_webpage/src/content/home_content.dart';
import 'package:basic_landing_webpage/src/content/screenshots_content.dart';
import 'package:basic_landing_webpage/src/navigation_bar/nav_bar.dart';
import 'package:flutter/material.dart';

final homeKey = new GlobalKey();
final featureKey = new GlobalKey();
final screenshotKey = new GlobalKey();
final contactKey = new GlobalKey();

class MyWebpage extends StatefulWidget {
  @override
  _MyWebpageState createState() => _MyWebpageState();
}

class _MyWebpageState extends State<MyWebpage> {
  var isScrolled = false;
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (controller.position.pixels > 5 && !isScrolled) {
        setState(() => isScrolled = true);
      } else if (controller.position.pixels <= 5 && isScrolled) {
        setState(() => isScrolled = false);
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void scrollTo(GlobalKey key) => Scrollable.ensureVisible(key.currentContext!, duration: Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double maxWith = width > 1200 ? 1200 : width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: maxWith,
          child: Column(
            children: [
              NavBar(
                isScrolled: isScrolled,
                homePressed: () => scrollTo(homeKey),
                featurePressed: () => scrollTo(featureKey),
                screenshotsPressed: () => scrollTo(screenshotKey),
                contactPressed: () => scrollTo(contactKey),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: controller,
                  child: Column(
                    children: <Widget>[
                      HomeContent(key: homeKey),
                      FeaturesContent(key: featureKey),
                      ScreenshotsContent(key: screenshotKey),
                      ContactContent(key: contactKey),
                      SizedBox(height: 50)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
