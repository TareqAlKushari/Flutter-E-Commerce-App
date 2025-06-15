// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../util/const.dart';
import '../../widgets/icon_badge.dart';
// import 'package:wholesale_your_products/screens/home/home.dart';
// import 'package:wholesale_your_products/util/const.dart';
// import 'package:wholesale_your_products/widgets/custom_carousel_slider.dart';
// import 'package:wholesale_your_products/widgets/icon_badge.dart';
// import 'package:wholesale_your_products/widgets/search_bar.dart';
// import 'package:wholesale_your_products/widgets/search_bar.dart';

// ignore: use_key_in_widget_constructors
class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController;
  // ignore: prefer_final_fields
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('توريد'),
        toolbarHeight: 60.0,
        backgroundColor: Constants.lightPrimary,
        centerTitle: true,
        elevation: 10.0,
        leading: IconBadge(icon: Icons.notifications_none, size: 24.0),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: IconBadge(
              icon: Icons.menu,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        // children: List.generate(1, (index) => Home()),
        // children: <Widget>[
        // Padding(
        // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0.0),
        // child: MySearchBar(),
        // ),
        // ],
      ),
      bottomNavigationBar: BottomAppBar(
        // ignore: sort_child_properties_last
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const SizedBox(width: 7.0),
            barIcon(icon: Icons.home, page: 0),
            barIcon(icon: Icons.local_offer, page: 1),
            barIcon(icon: Icons.favorite_border, page: 2, badge: true),
            barIcon(icon: Icons.person, page: 3),
            const SizedBox(width: 7.0),
          ],
        ),
        color: Constants.lightPrimary,
        elevation: BorderSide.strokeAlignOutside,
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      // ignore: unnecessary_this
      this._page = page;
    });
  }

  Widget barIcon(
      {IconData icon = Icons.home, int page = 0, bool badge = false}) {
    return IconButton(
      icon: badge
          ? IconBadge(
        key: null,
        icon: icon,
        size: 24.0,
      )
          : Icon(icon, size: 24.0),
      color: _page == page ? Theme.of(context).cardColor : Colors.blueGrey[300],
      onPressed: () => _pageController.jumpToPage(page),
    );
  }
}
