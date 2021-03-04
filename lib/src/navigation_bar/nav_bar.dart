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
    Key? key,
    required this.isScrolled,
    required this.homePressed,
    required this.featurePressed,
    required this.screenshotsPressed,
    required this.contactPressed,
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
    Key? key,
    required this.isScrolled,
    required this.homePressed,
    required this.featurePressed,
    required this.screenshotsPressed,
    required this.contactPressed,
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

class MobileNavBar extends StatefulWidget {
  final bool isScrolled;
  final VoidCallback homePressed;
  final VoidCallback featurePressed;
  final VoidCallback screenshotsPressed;
  final VoidCallback contactPressed;

  const MobileNavBar({
    Key? key,
    required this.isScrolled,
    required this.homePressed,
    required this.featurePressed,
    required this.screenshotsPressed,
    required this.contactPressed,
  }) : super(key: key);

  @override
  _MobileNavBarState createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar> {
  double collapsableHeight = 0.0;

  void setCollapsableHeight(double value) => setState(() => collapsableHeight = value);

  @override
  Widget build(BuildContext context) {
    final navBarColor = widget.isScrolled ? Colors.blue : Colors.white;
    return Stack(
      children: [
        AnimatedContainer(
          margin: EdgeInsets.only(top: 70.0),
          duration: Duration(milliseconds: 375),
          curve: Curves.ease,
          height: collapsableHeight,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                NavBarButton(
                  text: "Home",
                  onTap: () {
                    widget.homePressed.call();
                    setCollapsableHeight(0);
                  },
                ),
                NavBarButton(
                  text: "Features",
                  onTap: () {
                    widget.featurePressed.call();
                    setCollapsableHeight(0);
                  },
                ),
                NavBarButton(
                  text: "Screenshots",
                  onTap: () {
                    widget.screenshotsPressed.call();
                    setCollapsableHeight(0);
                  },
                ),
                NavBarButton(
                  text: "Contact",
                  onTap: () {
                    widget.contactPressed.call();
                    setCollapsableHeight(0);
                  },
                ),
              ],
            ),
          ),
        ),
        Container(
          color: navBarColor,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 30.0,
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
                      onTap: () => collapsableHeight > 0.0 ? setCollapsableHeight(0.0) : setCollapsableHeight(240.0),
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
        ),
      ],
    );
  }
}
