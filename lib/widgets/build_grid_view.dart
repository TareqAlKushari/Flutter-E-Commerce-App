import 'package:flutter/material.dart';
import 'package:wholesale_your_products/util/grid_map.dart';

class BuildGridView extends StatefulWidget {
  const BuildGridView({Key? key}) : super(key: key);

  @override
  State<BuildGridView> createState() => _BuildGridViewState();
}

class _BuildGridViewState extends State<BuildGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        mainAxisExtent: 130,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        return Container(
          width: double.infinity,
          // height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.amberAccent.shade100,
          ),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Image.asset(
                  fit: BoxFit.cover,
                  // height: 50,
                  // width: double.maxFinite,
                  '${gridMap.elementAt(index)["dishImage"]}',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  // mainAxisSize: MainAxisSize.max,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${gridMap.elementAt(index)['title']}",
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,

                            ),
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      "${gridMap.elementAt(index)['duration']}",
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.subtitle2!.merge(
                            const TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                    ),
                    // const SizedBox(height: 5.0),
                    // Row(
                    //
                    //   // crossAxisAlignment: CrossAxisAlignment.center,
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   mainAxisSize: MainAxisSize.max,
                    //
                    //   children: [
                    //     IconButton(
                    //       onPressed: () {},
                    //       icon: const Icon(
                    //         CupertinoIcons.heart,
                    //       ),
                    //     ),
                    //     IconButton(
                    //       onPressed: () {},
                    //       icon: const Icon(
                    //         CupertinoIcons.cart,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
