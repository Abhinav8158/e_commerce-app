import 'package:e_commerce_app/product_view.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 370, // Set the width, but not the height
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Atta, Rice, Oil up to 50% off!!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ProductView();
                    }));
                    print("Button tapped");
                  },
                  child: Container(
                    height: 100,
                    width: 370, // Match the width of the parent container
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.network(
                              "https://img.freepik.com/free-photo/flat-lay-bunch-fresh-provisions-donation_23-2148733838.jpg?w=826&t=st=1695961096~exp=1695961696~hmac=0501b275e416d6a046436d4734aa7698cf9b3e8b142599cb79b026008ce80bdf",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "No min. order value! Avail Free shopping\non order value of Min.RS. 600! Shop Now >",
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
