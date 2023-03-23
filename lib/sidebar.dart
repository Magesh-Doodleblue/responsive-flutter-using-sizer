import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import 'homepage_slide.dart';
import 'people.dart';
import 'search_slide.dart';

class SidebarXExampleApp extends StatelessWidget {
  SidebarXExampleApp({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SidebarX Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        canvasColor: canvasColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            color: Colors.white,
            fontSize: 46,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      home: Scaffold(
        body: Row(
          children: [
            SidebarX(
              controller: _controller,
              theme: SidebarXTheme(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: canvasColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                textStyle: const TextStyle(color: Colors.white),
                selectedTextStyle: const TextStyle(color: Colors.white),
                itemTextPadding: const EdgeInsets.only(left: 30),
                selectedItemTextPadding: const EdgeInsets.only(left: 30),
                itemDecoration: BoxDecoration(
                  border: Border.all(color: canvasColor),
                ),
                selectedItemDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: actionColor.withOpacity(0.37),
                  ),
                  gradient: const LinearGradient(
                    colors: [accentCanvasColor, canvasColor],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.28),
                      blurRadius: 30,
                    )
                  ],
                ),
                iconTheme: const IconThemeData(
                  color: Colors.white,
                  size: 20,
                ),

                ///sample adding
              ),
              extendedTheme: const SidebarXTheme(
                width: 200,
                decoration: BoxDecoration(
                  color: canvasColor,
                ),
                margin: EdgeInsets.only(right: 10),
              ),
              footerDivider: divider,
              headerBuilder: (context, extended) {
                return SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/168/168724.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              items: [
                SidebarXItem(
                  icon: Icons.home,
                  label: 'Home',
                  onTap: () {
                    debugPrint('Hello');
                  },
                ),
                const SidebarXItem(
                  icon: Icons.search,
                  label: 'Search',
                ),
                const SidebarXItem(
                  icon: Icons.people,
                  label: 'People',
                ),
                const SidebarXItem(
                  icon: Icons.favorite,
                  label: 'Favorites',
                ),
                const SidebarXItem(
                  icon: Icons.account_circle,
                  label: 'Profile',
                ),
                const SidebarXItem(
                  icon: Icons.settings,
                  label: 'Settings',
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: _ScreensExample(controller: _controller),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ScreensExample extends StatelessWidget {
  _ScreensExample({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SidebarXController controller;
  final List<String> _imageUrls = [
    "https://kaleidosblog.s3-eu-west-1.amazonaws.com/flutter_gallery/beach-84533_640.jpg",
    "https://kaleidosblog.s3-eu-west-1.amazonaws.com/flutter_gallery/brooklyn-bridge-1791001_640.jpg",
    "https://kaleidosblog.s3-eu-west-1.amazonaws.com/flutter_gallery/cinque-terre-279013_640.jpg",
    "https://kaleidosblog.s3-eu-west-1.amazonaws.com/flutter_gallery/coast-3358820_640.jpg",
    "https://kaleidosblog.s3-eu-west-1.amazonaws.com/flutter_gallery/empire-state-building-1081929_640.jpg",
    "https://kaleidosblog.s3-eu-west-1.amazonaws.com/flutter_gallery/maldives-1993704_640.jpg",
    "https://kaleidosblog.s3-eu-west-1.amazonaws.com/flutter_gallery/new-york-city-336475_640.jpg",
    "https://kaleidosblog.s3-eu-west-1.amazonaws.com/flutter_gallery/plouzane-1758197_640.jpg",
    "https://kaleidosblog.s3-eu-west-1.amazonaws.com/flutter_gallery/sea-2470908_640.jpg",
    "https://kaleidosblog.s3-eu-west-1.amazonaws.com/flutter_gallery/sunset-675847_640.jpg",
    "https://kaleidosblog.s3-eu-west-1.amazonaws.com/flutter_gallery/surfing-2212948_640.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        switch (controller.selectedIndex) {
          case 0:
            return homeWidget(theme: theme);
          case 1:
            return searchWidget(theme: theme);
          case 2:
            return peopleWidget(imageUrls: _imageUrls);
          case 3:
            return Text(
              'Favorites',
              style: theme.textTheme.headlineSmall,
            );
          case 4:
            return Text(
              'Profile',
              style: theme.textTheme.headlineSmall,
            );
          case 5:
            return Text(
              'Settings',
              style: theme.textTheme.headlineSmall,
            );
          default:
            return Text(
              'Not found page',
              style: theme.textTheme.headlineSmall,
            );
        }
      },
    );
  }
}

const primaryColor = Color(0xFF685BFF);
const canvasColor = Color(0xFF2E2E48);
const scaffoldBackgroundColor = Color(0xFF464667);
const accentCanvasColor = Color(0xFF3E3E61);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);

final divider = Divider(color: white.withOpacity(0.3), height: 1);
