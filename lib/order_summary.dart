import 'package:e_commerce_app/payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  double _rating = 3.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Order Summary',style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 1),
                      child: Text(
                        "realme C51 (Mint Green,64 GB)(4 GB RAM)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 125, top: 10),
                      child: Text(
                        " ₹.8555",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          Icons.star,
                          color: index < _rating.floor()
                              ? Colors.amber
                              : Colors.grey,
                        );
                      }),
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
          Container(
            height: 250,
            width: 400,
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Price Details",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Price"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Discount"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Delivery Charges"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Secured Packing fee"),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Total Amount',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Divider()
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("₹ 12000"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("-₹ 3445"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Free delivery",style: TextStyle(
                          color: Colors.green
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("free",style: TextStyle(color: Colors.green),),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '₹ 8555',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Divider()

                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 260,
          ),
             Container(
              height: 100,
              width: 400,
              color: Colors.transparent,
               child: Row(
                 children: [
                   SizedBox(
                     width: 10,

                   ),
                   Text("₹ 8555",style: TextStyle(
                     fontSize: 20
                   ),),
                   SizedBox(
                     width: 120,
                   ),
                   GestureDetector(
                     onTap: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) {
                           return Payment();
                         }),
                       );
                       print("Button tapped");
                     },
                   child:Container(
                     width: 200,
                     height: 50,
                     color: Colors.amber,
                     child: Center(
                       child: Text(""
                           "Continue",style: TextStyle(
                         fontSize: 15,fontWeight: FontWeight.bold
                       ),),
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
