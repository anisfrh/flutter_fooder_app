import 'package:flutter/material.dart';

class TopMenuTile extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String? slug;

  const TopMenuTile({
    Key? key,
    required this.name,
    required this.imageUrl,
    this.slug,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 25,
                  offset: Offset(0.0, 0.75),
                ),
              ]
            ),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                width: 50,
                height: 50,
                child: Center(
                  child: Image.asset(
                    'assets/$imageUrl.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}


class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          TopMenuTile(name: "Burger", imageUrl: "ic_burger", slug: ""),
          TopMenuTile(name: "Sushi", imageUrl: "ic_sushi", slug: ""),
          TopMenuTile(name: "Pizza", imageUrl: "ic_pizza", slug: ""),
          TopMenuTile(name: "Cake", imageUrl: "ic_cake", slug: ""),
          TopMenuTile(name: "Ice Cream", imageUrl: "ic_ice_cream", slug: ""),
          TopMenuTile(name: "Soft Drink", imageUrl: "ic_soft_drink", slug: ""),
        ], 
      ),
    );
  }
}
