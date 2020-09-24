import 'package:flutter/material.dart';
import 'package:flutter_web_mobile/mobile/hotel_booking/hotel_app_theme.dart';

class NavItem extends StatefulWidget {
  final String title;
  final bool isSelected;

  NavItem({@required this.title, this.isSelected = false});

  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(
        fontSize: 24.0, color: hovered ? Colors.white : Colors.black54);

    return InkWell(
      onHover: (hover) {
        setState(() {
          this.hovered = hover;
        });
      },
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(top: 8, bottom: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: hovered
                ? HotelAppTheme.buildLightTheme().primaryColor
                : Colors.transparent),
        child: Center(
          child: Text(
            widget.title,
            style: style,
          ),
        ),
      ),
    );
  }
}
