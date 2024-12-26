import 'package:flutter/material.dart';
import 'details_screen.dart';
import '../models/burger.dart';  // Import the Burger model

class HomeScreen extends StatelessWidget {
  // List of Burger objects
  final List<Burger> items = [
    Burger(
      name: 'Classic Beef Burger',
      price: 8.0,
      description: 'Juicy beef patty with lettuce, tomato, and cheese.',
      averageRating: 4.5,
      deliveryPrice: 'Free',
      deliveryTime: '15 min',
      size: 'Regular',
      ingredients: ['Beef patty', 'Lettuce', 'Tomato', 'Cheese', 'Bun'],
    ),
    Burger(
      name: 'Chicken Deluxe',
      price: 9.0,
      description: 'Grilled chicken with mayo, lettuce, and pickles.',
      averageRating: 4.7,
      deliveryPrice: 'Free',
      deliveryTime: '20 min',
      size: 'Medium',
      ingredients: ['Chicken breast', 'Mayonnaise', 'Lettuce', 'Pickles', 'Bun'],
    ),
    Burger(
      name: 'Veggie Delight',
      price: 7.0,
      description: 'A delicious mix of grilled vegetables and cheese.',
      averageRating: 4.3,
      deliveryPrice: '2',
      deliveryTime: '20 min',
      size: 'Small',
      ingredients: ['Grilled vegetables', 'Cheese', 'Lettuce', 'Tomato', 'Bun'],
    ),
    // Add other burgers here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  "Burger",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Popular Burgers',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 3 / 4,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(item: item),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/burger.png", height: 100),
                          SizedBox(height: 10),
                          Text(item.name, style: TextStyle(fontSize: 16)),
                          Text('\$${item.price}',
                              style: TextStyle(fontSize: 14)),
                          Text('⭐ ${item.averageRating}',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
