import 'package:flutter/material.dart';

class NavBarButton extends StatefulWidget {
  final VoidCallback onTap;
  final String text;

  const NavBarButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  Color color = Colors.black45;
  FontWeight fontWeight = FontWeight.w600;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          color = Colors.deepPurple;
          fontWeight = FontWeight.w800;
        });
      },
      onExit: (value) {
        setState(() {
          color = Colors.black45;
          fontWeight = FontWeight.w600;
        });
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: widget.onTap,
          child: Container(
            height: 50,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              widget.text,
              style: TextStyle(fontWeight: fontWeight, color: color, fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
