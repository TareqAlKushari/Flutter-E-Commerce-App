import 'package:flutter/material.dart';
import 'package:wholesale_your_products/screen/home_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'توريد',
          // ignore: deprecated_member_use
          style: Theme.of(context).textTheme.headline6,
        ),
        centerTitle: true,
        leading: const Icon(Icons.notifications_none),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: const HomeScreen(),
      bottomNavigationBar: BottomAppBar(
        // ignore: sort_child_properties_last
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const SizedBox(width: 7.0),
            IconButton(
              icon: const Icon(Icons.home),
              tooltip: 'الرئيسية',
              // label: 'الرئيسية',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.local_offer),
              tooltip: 'العروض',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border),
              tooltip: 'المفضلة',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person),
              tooltip: 'الحساب',
              onPressed: () {},
            ),
            const SizedBox(width: 7.0),
          ],
        ),
        color: Theme.of(context).textSelectionTheme.selectionColor,
      ),
    );
  }
}
