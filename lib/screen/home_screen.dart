import 'dart:async';

import 'package:flutter/material.dart';

import '../util/places_horizontal_list.dart';
import '../widgets/build_grid_view.dart';
import '../widgets/custom_carousel_slider.dart';
import '../widgets/horizontal_list.dart';
import '../widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController pageController;
  // ScrollController _scrollController = ScrollController();
  int pageNo = 0;

  Timer? carasouelTmer;
  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 4) {
        pageNo = 0;
      }
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
      pageNo++;
    });
  }

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    carasouelTmer = getTimer();
    // _scrollController.addListener(() {
    // if (_scrollController.position.userScrollDirection ==
    // ScrollDirection.reverse) {
    // showBtmAppBr = false;
    // setState(() {});
    // } else {
    // showBtmAppBr = true;
    // setState(() {});
    // }
    // });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  bool showBtmAppBr = true;

  List imgList = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // controller: _scrollController,
          child: Column(
            children: [
              const SizedBox(height: 12.0),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: MySearchBar(),
              ),
              SizedBox(
                child: CustomCarouselSlider(imgList: imgList),
              ),
              const SizedBox(height: 12.0),
              // Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // children: List.generate(
              // 5,
              // (index) => GestureDetector(
              // child: Container(
              // margin: const EdgeInsets.all(2.0),
              // child: Icon(
              // Icons.circle,
              // size: 12.0,
              // color: pageNo == index
              // ? Colors.indigoAccent
              // : Colors.grey.shade300,
              // ),
              // ),
              // ),
              // ),
              // ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: BuildGridView(),
              ),
              const SizedBox(height: 12.0),
              Container(
                padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                height: 250.0,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  primary: false,
                  // ignore: unnecessary_null_comparison
                  itemCount: places_horizontal == null ? 0 : places_horizontal.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map place = places_horizontal.reversed.toList()[index];
                    return HorizontalList(place: place);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
