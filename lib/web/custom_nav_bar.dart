import 'package:flutter/material.dart';
import 'package:flutter_web_mobile/web/nav_item.dart';

class CustomNavBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomNavBar({@required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 120.0, right: 120.0, top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Image(
                        image: AssetImage("assets/images/logo_travel.png"),
                      ),
                    ),
                    Text(
                      "Triviliki",
                      style: Theme.of(context).textTheme.headline3,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    Expanded(
                      child: NavItem(
                        title: "Airplane",
                      ),
                    ),
                    Expanded(
                      child: NavItem(
                        title: "Train",
                      ),
                    ),
                    Expanded(
                      child: NavItem(
                        title: "Bus",
                      ),
                    ),
                    Expanded(
                      child: NavItem(title: "Testimony"),
                    ),
                    Expanded(
                      child: NavItem(title: "Book Now"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(52);
}
