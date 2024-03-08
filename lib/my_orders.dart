import 'package:e_commerce_app/cart.dart';
import 'package:e_commerce_app/product_details.dart';
import 'package:e_commerce_app/product_view.dart';
import 'package:e_commerce_app/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart'; // Import the package

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'My Orders',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)
            =>Search()));
          }, icon: Icon(Icons.search_sharp, color: Colors.black)),
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)
            =>Cart()));
          }, icon: Icon(Icons.add_shopping_cart, color: Colors.black))
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with your order list size
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Card(
              elevation: 2,
              child: Container(
                height: 200, // Set the desired height here
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductDetails()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ListTile(
                      leading: Container(
                        width: 100,
                        height: 150,
                        child: Image.network(
                          "https://www.boat-lifestyle.com/cdn/shop/products/616b4ead-bbd9-4a16-aeab-8d331a16f697_600x.png?v=1642405569",
                          fit: BoxFit.fill,
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Airdopes 131',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Wireless Earbuds with up to 60 Hours Playback, 13mm Drivers, IWP Technology, 650mAh Charging Case',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '₹849',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          RatingBar.builder(
                            initialRating: 1, // Set the initial rating here
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 24,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.yellow, // Change the color to yellow
                            ),
                            onRatingUpdate: (rating) {
                              // Handle rating updates here
                            },
                          )

                        ],
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
