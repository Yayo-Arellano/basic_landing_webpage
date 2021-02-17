import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const googlePlayURL = 'https://play.google.com/store/apps/details?id=com.google.android.youtube';
const appStoreURL = 'https://apps.apple.com/tw/app/youtube/id544007664';

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * .65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: width * .3,
            child: Align(alignment: Alignment.bottomRight, child: Image.asset('assets/images/app_screen.png')),
          ),
          SizedBox(width: 24),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Basic Landing Webpage",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                SizedBox(height: 24),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                ),
                SizedBox(height: 24),
                _StoreBadges(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _StoreBadges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => launch(googlePlayURL),
          child: Image.asset(
            'assets/images/google_play_badge.png',
            height: 60,
            width: 200,
          ),
        ),
        SizedBox(width: 24),
        GestureDetector(
          onTap: () => launch(appStoreURL),
          child: Image.asset(
            'assets/images/app_store_badge.png',
            height: 60,
            width: 200,
          ),
        ),
      ],
    );
  }
}
