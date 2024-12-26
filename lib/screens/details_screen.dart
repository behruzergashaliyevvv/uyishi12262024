import 'package:flutter/material.dart';

import '../models/burger.dart';
class DetailsScreen extends StatelessWidget {
  final Burger item;

  DetailsScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    int quantity = 1;
    double totalPrice = item.price;

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Scaffold(
          appBar: AppBar(
            title: Text(item.name),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 15),
                child: Icon(Icons.favorite_border),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child: Center(
                    child: Image.asset("assets/images/burger.png"),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  item.name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(item.description),
                SizedBox(height: 10),
                Text('Price: \$${item.price}'),
                Text('Rating: ${item.averageRating}⭐'),
                SizedBox(height: 10),
                Text('Delivery: ${item.deliveryPrice} - ${item.deliveryTime}'),
                SizedBox(height: 10),
                Text('Size: ${item.size}'),
                SizedBox(height: 10),
                Text('Ingredients:'),
                for (var ingredient in item.ingredients)
                  Text('- $ingredient'),
                Spacer(),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total: \$${totalPrice.toStringAsFixed(2)}',
                            style: TextStyle(fontSize: 18),
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove_circle_outline),
                                onPressed: () {
                                  setState(() {
                                    if (quantity > 1) {
                                      quantity--;
                                      totalPrice = item.price * quantity;
                                    }
                                  });
                                },
                              ),
                              Text(
                                '$quantity',
                                style: TextStyle(fontSize: 18),
                              ),
                              IconButton(
                                icon: Icon(Icons.add_circle_outline),
                                onPressed: () {
                                  setState(() {
                                    quantity++;
                                    totalPrice = item.price * quantity;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('${item.name} added to cart!'),
                            ),
                          );
                        },
                        child: Text('ADD TO CART'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
