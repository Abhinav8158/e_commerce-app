import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Top deals on iphone 14...",
                // prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search_outlined),
                  onPressed: () {
                    // Handle the search button tap here
                  },
                ),
                contentPadding: EdgeInsets.all(12.0),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(),
                // Add the search icon here
              ),
            )
      ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Related Searches",style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 170,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.white,
                            child: Image.network("https://m.media-amazon.com/images/I/41zTPA5e7FL._SY300_SX300_QL70_FMwebp_.jpg"),

                          ),
                          Expanded(child:
                          Text("Crucial RAM 8GB DDR4 3200MHz CL22 "))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 170,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.white,
                            child: Image.network("https://m.media-amazon.com/images/I/614wNrAOwRL._SL1500_.jpg"),
                          ),
                          Expanded(child:
                          Text("ZEB-SD26 256 GB Solid State Drive,"))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 170,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.white,
                              child: Image.network('https://m.media-amazon.com/images/I/31PuCSzC6EL._SX300_SY300_QL70_FMwebp_.jpg'),
                            ),
                            Expanded(child:
                            Text("Sounce USB 3.0 to Type-C OTG Cable ")),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 170,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              color: Colors.white,
                              child: Image.network("https://rukminim2.flixcart.com/image/832/832/ktx9si80/pendrive/pendrive/k/f/t/ultra-luxe-usb-3-1-sandisk-original-imag75t7hawgnyee.jpeg?q=70"),
                              
                            ),
                            Expanded(child:
                            Text("SanDisk Ultra Luxe USB 3.1 256 GB Pen Drive"),),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 170,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.white,
                            child: Image.network('https://m.media-amazon.com/images/I/31PuCSzC6EL._SX300_SY300_QL70_FMwebp_.jpg'),
                          ),
                          Expanded(child:
                          Text("Sounce USB 3.0 to Type-C OTG Cable ")),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 170,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            color: Colors.white,
                            child: Image.network("https://www.myg.in/images/thumbnails/1248/920/detailed/19/Seagate_One_Touch-1.jpeg"),

                          ),
                          Expanded(child:
                          Text("Portable 1 TB External Hard Disk"),),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider()


          ],
        ),
      ),

    );
  }
}
