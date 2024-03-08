import 'package:flutter/material.dart';

import 'order_summary.dart';

class CartItem {
  final String name;
  final String imageUrl;
  double rating;
  String reviewText;
  int itemCount;

  CartItem({
    required this.name,
    required this.imageUrl,
    this.rating = 4.5,
    this.reviewText = '',
    this.itemCount = 1,
  });
}

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<CartItem> cartItems = [
    CartItem(
      name: 'Sebamed Shower Gel Watermelon & Mint',
      imageUrl:
      'https://www.sebamed.com/fileadmin/_processed_/c/4/csm_productdetail_shower_gel_watermelon_mint_460x380_15ca0174a4.png',
      rating: 4.5,
      itemCount: 1,
    ),
    CartItem(
      name: 'Apple Iphone 15 pro max',
      imageUrl:
      'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRdb8-FJv1X2u_8dovslMuQ1Yw9U0EibyZqsmBS2c5N3DgvP04zHJYrYWD1UJ2jR4mB6F2BmOUPA7XW5_xffJl84v-jtEaN',
      rating: 4.5,
      itemCount: 1,
    ),
    CartItem(
      name: 'Samsung Gear S3',
      imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_8AC-yBTa5Nzbv4bG7-cEMsQ7SnaOFsqmzA&usqp=CAU',
      rating: 4.5,
      itemCount: 1,
    ),
  ];

  void _increaseItemCount(int index) {
    setState(() {
      cartItems[index].itemCount++;
    });
  }

  void _decreaseItemCount(int index) {
    setState(() {
      if (cartItems[index].itemCount > 1) {
        cartItems[index].itemCount--;
      }
    });
  }

  void _remove(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Cart',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey,
        child: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            final cartItem = cartItems[index];
            return Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          color: Colors.white,
                          child: Image.network(cartItem.imageUrl),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              Text(
                                cartItem.name,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: List.generate(5, (index) {
                                  return Icon(
                                    Icons.star,
                                    color: index < cartItem.rating.floor()
                                        ? Colors.amber
                                        : Colors.grey,
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3, right: 3),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 2, top: 1, left: 6),
                          child: Container(
                            color: Colors.white,
                            height: 40,
                            width: 122,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 2, right: 9),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () => _decreaseItemCount(index),
                                    icon: Icon(Icons.remove),
                                  ),
                                  Text('${cartItem.itemCount}'), // Display the item count
                                  IconButton(
                                    onPressed: () => _increaseItemCount(index),
                                    icon: Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 2, top: 1, left: 0),
                          child: Container(
                            color: Colors.white,
                            height: 40,
                            width: 122,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0, right: 10),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () => _remove(index),
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text("Remove"),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 10, top: 1, left: 0),
                             child: Container(
                                color: Colors.white,
                                 height: 40,
                                      width: 122,
                                   child: GestureDetector(
                                       onTap: () {
                                    Navigator.push(
                                            context,
                                          MaterialPageRoute(builder: (context) {
                                                return OrderSummary();
                                      }),
                                     );
                                     print("Button tapped");
                                     },
                                      child: Padding(
                                      padding: const EdgeInsets.only(left: 15.0, right: 10),
                                       child: Row(
                                        children: [
                                        IconButton(
                                        onPressed: () {
            // Add your onPressed logic here
                                        },
                                         icon: Icon(
                                        Icons.local_convenience_store_rounded,
                                        color: Colors.green,
                                        ),
                                       ),
                                        Text("Buy Now"),
                                     ],
                                   ),
                             ),
                         ),
                    ),
                  ),
                       SizedBox(
                    height: 1,
                  ),
                ],
               ),
                  )
            ]
            )
            );
          },
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 80,
            width: 400,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: [
                  Text(
                    '162085',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 170),
                     child:GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return OrderSummary();
                          }),
                        );
                        print("Button tapped");
                      },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.amber,
                      ),
                      height: 45,
                      width: 150,
                      child: Center(
                        child: Text(
                          "Place Order",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

