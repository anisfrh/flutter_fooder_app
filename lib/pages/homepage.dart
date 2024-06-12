import 'package:app_food_order/widgets/best_food.dart';
import 'package:app_food_order/widgets/popular_food.dart';
import 'package:app_food_order/widgets/top_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "What would you like to eat?",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            color: Colors.black,
          ),
        ],
        // systemOverlayStyle: SystemUiOverLayStyle.dark
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      width: 0,
                      color: Colors.redAccent,
                      style: BorderStyle.none,
                    ),
                  ),
                  // filled: true,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.redAccent,
                  ),
                  suffixIcon: const Icon(
                    Icons.sort,
                    color: Colors.redAccent,
                  ),
                  hintText: "what would you like to buy?"
                ),
              ),
            ),
            // Top Menu Widget
            const TopMenu(),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Foods",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.redAccent,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Popular Food Widget
            const PopularFoodWidget(),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Foods",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            // Best Foods Widget
            const BestFoodList(),
          ],
        ),
      ),
    );
  }
}
