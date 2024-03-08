import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'new_addresses.dart';

class MyAddresses extends StatefulWidget {
  const MyAddresses({super.key});

  @override
  State<MyAddresses> createState() => _MyAddressesState();
}

class _MyAddressesState extends State<MyAddresses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("My Addresses",style: TextStyle(
          color: Colors.black
        ),),
        actions: [
          Icon(Icons.add_shopping_cart,color: Colors.black,),
        ],
      ),
      body: Column(
        children: [
           Container(
             height: 80,
             width: 400,
             color: Colors.white,
             child: Center(child: TextButton(
               onPressed: () {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => NewAddres()),
                 );
               },
               child: Text(
                 "+ Add a new Address",
                 style: TextStyle(
                   color: Colors.indigoAccent,
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             )
               )
      ),

          Container(
            height: 80,
            width: 400,
            color: Colors.transparent,
          ),
          Container(
            height: 150,
            width: 400,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Abhinav",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Sreebhavan, Niramaruthur,Niramarthur (P.O),Ayyappankav,Tirur",style: TextStyle(
                    fontSize: 18
                  ),
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("9567112236"),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
