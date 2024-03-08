import 'package:e_commerce_app/product_details.dart';
import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  double _rating = 3.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Product',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.red),
            onPressed: () {
              // Add your favorite button action here
            },
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: Colors.black),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ProductDetails();
                        }),
                      );
                      print("Button tapped");
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  width: 150,
                                  height: 120,
                                  color: Colors.white,
                                  child: Image.network(
                                    'https://rukminim2.flixcart.com/image/832/832/xif0q/mobile/b/i/x/-original-imagt4qptrkzwmxa.jpeg?q=70',
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 20,right: 1
                                    ),
                                    child: Text(
                                      "realme C51 (Mint Green,64 GB)(4 GB RAM)",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 125, top: 10),
                                    child: Text(
                                      " Rs.8555",
                                      style: TextStyle(
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 100),
                                    child: Row(
                                      children: List.generate(5, (index) {
                                        return Icon(
                                          Icons.star,
                                          color: index < _rating.floor()
                                              ? Colors.amber
                                              : Colors.grey,
                                        );
                                      }),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 70),
                                    child: Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: Colors.greenAccent,
                                        ),
                                      ),
                                      child: Text(
                                        "Lowest price since launch",
                                        style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
