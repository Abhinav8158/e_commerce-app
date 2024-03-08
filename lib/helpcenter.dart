import 'package:e_commerce_app/wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("24x7 Customer Support",style: TextStyle(
            color: Colors.black
          ),),
        ),
        actions: [
          IconButton(onPressed: (){ Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Cart()),
    );
    },
           icon: Icon(Icons.add_shopping_cart, color: Colors.black),
  )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  child: Text("Get Quick customwer support by selecting your item",style: TextStyle(
                    fontSize: 18
                  ),),
                ),
              ),
              CircleAvatar(
                radius: 25,
                child: Image.network('https://img.freepik.com/premium-vector/24-hour-service-iconheadphone-talk-support-phone-consult-customer-problems_68708-3342.jpg'),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
            child: Icon(Icons.headset_mic,color: Colors.blue,),
        backgroundColor: Colors.white,


        ),


    );
  }
}
