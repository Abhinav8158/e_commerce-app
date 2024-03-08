import 'package:e_commerce_app/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Wishlist",style: TextStyle(
          color: Colors.black
        ),),
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to the Cart screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cart()),
              );
            },
            icon: Icon(Icons.add_shopping_cart, color: Colors.black),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 180,
                      color: Colors.amber,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 180,
                            color: Colors.white,
                            child: Image.network('https://m.media-amazon.com/images/I/81KoSSAwH2L._AC_UF1000,1000_QL80_.jpg'),
                          ),
                          Container(
                            height: 100,
                            width: 180,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Microsoft Surface Laptop 4 AMD Ryzen 5 4680U 13.5 inches Touchscreen Laptop (8GB/256GB SSD/Windows 11 Home /Radeon Graphics/Platinum/1.265 kg) - 5PB-00023",maxLines: 3,),
                                Text("₹74999.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return WishList();
                                    }
                                    ));
                                    print("Button tapped");
                                  },
                                  child:   Container(
                                    width: 175,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Center(child: Text("Add to Cart",style: TextStyle(fontSize: 20,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ),
                        ],
                      ),
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        width: 180,
                        color: Colors.amber,
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 180,
                              color: Colors.white,
                              child: Image.network('https://m.media-amazon.com/images/I/71V0nkMG33L._AC_UF1000,1000_QL80_.jpg'),
                            ),
                            Container(
                              height: 100,
                              width: 180,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Enter Sound Attack USB Gaming Speaker with 6W Output, LED Backlight"),
                                  Text("₹789.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context){
                                        return WishList();
                                      }
                                      ));
                                      print("Button tapped");
                                    },
                                    child:   Container(
                                      width: 175,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 1.0,
                                        ),
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Center(child: Text("Add to Cart",style: TextStyle(fontSize: 20,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              
                            ),
                          ],
                        ),
                      ),
                    ),
                     ]
              ),
                  Row(
                    children:[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 180,
                          color: Colors.amber,
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 180,
                                color: Colors.white,
                                child: Image.network('https://blackberrys.com/cdn/shop/products/solid_formal_footwear_in_tan_pajero-FBPM0020E2SA22FX-image1.jpg?v=1687872125'),
                              ),
                              Container(
                                height: 100,
                                width: 180,
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Leather Formal Tan Solid Boot - Pajero",maxLines: 3,),
                                    Text("₹4799.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context){
                                          return WishList();
                                        }
                                        ));
                                        print("Button tapped");
                                      },
                                      child:   Container(
                                        width: 175,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Center(child: Text("Add to Cart",style: TextStyle(fontSize: 20,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 180,
                          color: Colors.amber,
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 180,
                                color: Colors.white,
                                child: Image.network('https://m.media-amazon.com/images/I/81KoSSAwH2L._AC_UF1000,1000_QL80_.jpg'),
                              ),
                              Container(
                                height: 100,
                                width: 180,
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Microsoft Surface Laptop 4 AMD Ryzen 5 4680U 13.5 inches Touchscreen Laptop (8GB/256GB SSD/Windows 11 Home /Radeon Graphics/Platinum/1.265 kg) - 5PB-00023",maxLines: 3,),
                                    Text("₹74999.00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context){
                                          return WishList();
                                        }
                                        ));
                                        print("Button tapped");
                                      },
                                      child:   Container(
                                        width: 175,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(2),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Center(child: Text("Add to Cart",style: TextStyle(fontSize: 20,color: Colors.blueAccent,fontWeight: FontWeight.bold),)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                  )



                ],
          )
        ],
      ),

    );
  }
}
