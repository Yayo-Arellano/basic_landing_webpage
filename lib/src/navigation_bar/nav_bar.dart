import 'package:basic_landing_webpage/src/navigation_bar/nav_bar_button.dart';
import 'package:basic_landing_webpage/src/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class NavBar extends ResponsiveWidget {
  final bool isScrolled;
  final VoidCallback homePressed;
  final VoidCallback featurePressed;
  final VoidCallback screenshotsPressed;
  final VoidCallback contactPressed;

  const NavBar({
    Key key,
    this.isScrolled,
    this.homePressed,
    this.featurePressed,
    this.screenshotsPressed,
    this.contactPressed,
  }) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) {
    return DesktopNavBar(
      isScrolled: isScrolled,
      homePressed: homePressed,
      featurePressed: featurePressed,
      screenshotsPressed: screenshotsPressed,
      contactPressed: contactPressed,
    );
  }

  @override
  Widget buildMobile(BuildContext context) {
    return MobileNavBar(
      isScrolled: isScrolled,
      homePressed: homePressed,
      featurePressed: featurePressed,
      screenshotsPressed: screenshotsPressed,
      contactPressed: contactPressed,
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  final bool isScrolled;
  final VoidCallback homePressed;
  final VoidCallback featurePressed;
  final VoidCallback screenshotsPressed;
  final VoidCallback contactPressed;

  const DesktopNavBar({
    Key key,
    this.isScrolled,
    this.homePressed,
    this.featurePressed,
    this.screenshotsPressed,
    this.contactPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navBarColor = isScrolled ? Colors.blue : Colors.white;

    return Container(
      color: navBarColor,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 40.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Company Name",
                  style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black87, fontSize: 32),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                NavBarButton(
                  onTap: homePressed,
                  text: "Home",
                ),
                NavBarButton(
                  onTap: featurePressed,
                  text: "Features",
                ),
                NavBarButton(
                  onTap: screenshotsPressed,
                  text: "Screenshots",
                ),
                NavBarButton(
                  onTap: contactPressed,
                  text: "Contact",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  final bool isScrolled;
  final VoidCallback homePressed;
  final VoidCallback featurePressed;
  final VoidCallback screenshotsPressed;
  final VoidCallback contactPressed;

  const MobileNavBar({
    Key key,
    this.isScrolled,
    this.homePressed,
    this.featurePressed,
    this.screenshotsPressed,
    this.contactPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navBarColor = isScrolled ? Colors.blue : Colors.white;

    return Container(
      color: navBarColor,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 40.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Company Name",
                  style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black87, fontSize: 32),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  splashColor: Colors.white60,
                  onTap: () {
                    // Open a dialog with the buttons
                  },
                  child: Icon(
                    Icons.menu,
                    color: Colors.black54,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
