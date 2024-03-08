import 'package:e_commerce_app/product_view.dart';
import 'package:e_commerce_app/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("All Categories",style: TextStyle(
          color: Colors.black
        ),),
          actions:[ IconButton(
            icon: Icon(Icons.search,
              color: Colors.black,),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)
              =>Search(),
              ));
            },
            color: Colors.black,
          ),
          ]      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8,left: 8),
            child: Text("Popular Category",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),

          Padding(
            padding: const EdgeInsets.only(top:5),
            child: Row(
              children: [
            Padding(
              padding: const EdgeInsets.only(top: 8,right: 8,left: 10),
                  child: GestureDetector(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProductView();
                   }
                   ));
                   print("Button tapped");
                  },

                   child: Column(
                     children: [
                       CircleAvatar(backgroundColor: Colors.white,
                        child: Image.network('https://img5.gadgetsnow.com/gd/images/products/additional/large/G390874_View_1/mobiles/smartphones/apple-iphone-14-pro-max-1-tb-deep-purple-6-gb-ram-.jpg',
                        fit: BoxFit.fill,),
                  radius: 40,
                ),
                       Padding(
                         padding: const EdgeInsets.only(top: 5,left:8),
                         child: Text("Mobiles"),
                       ),
                     ],
                   ),
            ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
              child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
               return ProductView();
              }
              ));
                 print("Button tapped");
             },

               child: Column(
                 children: [
                   CircleAvatar(backgroundColor: Colors.white,
                    child: Image.network('https://m.media-amazon.com/images/I/51IjO85owSL._SX342_SY445_.jpg',
                      fit: BoxFit.fill,),

                    radius: 40,
              ),
                   Padding(
                     padding: const EdgeInsets.only(top: 5,left:8),
                     child: Text("Shirts"),
                   ),
                 ],
               ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
              child: GestureDetector(
               onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context){
               return ProductView();
                  }
               ));
                print("Button tapped");
                },

                     child: Column(
                       children: [
                         CircleAvatar(backgroundColor: Colors.white,
                          child: Image.network(('https://i.pinimg.com/564x/0d/c9/89/0dc989c2f3acf866ca01e6ab10cf20f2.jpg'),
                fit: BoxFit.fill,),
                radius: 40,
              ),
                         Padding(
                           padding: const EdgeInsets.only(top: 5,left: 8),
                           child: Text("Dresses ,Tops"),
                         ),
                       ],
                     ),
            ),
            ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
                 child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProductView();
                  }
                      ));
                      print("Button tapped");
                 },

                    child: Column(
                      children: [
                        CircleAvatar(backgroundColor: Colors.white,
                        child: Image.network('https://imagescdn.simons.ca/images/15921-211935-44-A1_2/reversed-waist-straight-leg-jean.jpg?__=4',
                          fit: BoxFit.fill,
                        ),
                        radius: 40,
                  ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 8),
                          child: Text("Jeans"),
                        )
                      ],
                    ),
                ),
                ),
        ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 8,left: 10),
                   child: GestureDetector(
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ProductView();
                    }
                     ));
                    print("Button tapped");
                    },

                    child: Column(
                      children: [
                        CircleAvatar(backgroundColor: Colors.white,
                          child: Image.network('https://manubhai.in/SocialMedia/post_artworks/TT-01-24Feb2023.jpg',
                            fit: BoxFit.fill,),
                          radius: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 8),
                          child: Text("Jewllery"),
                        ),
                      ],
                    ),
                  ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
                      child: GestureDetector(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context){
                       return ProductView();
                           }
                       ));
                        print("Button tapped");
                         },

                       child: Column(
                      children: [
                        CircleAvatar(backgroundColor: Colors.white,
                          child: Image.network('https://5.imimg.com/data5/HE/RB/GLADMIN-6817178/food-and-beverage-500x500.png',
                            fit: BoxFit.fill,),

                          radius: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 8),
                          child: Text("Food &\nBeavarage"),
                        ),
                      ],
                    ),
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
                    child: GestureDetector(
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                         return ProductView();
                    }
                    ));
                        print("Button tapped");
                    },

    child: Column(
                      children: [
                        CircleAvatar(backgroundColor: Colors.white,
                          child: Image.network(('https://images-static.nykaa.com/media/catalog/product/9/7/971ae74ANOAA00000013_1ml.jpg'),
                            fit: BoxFit.fill,),
                          radius: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 8),
                          child: Text("Hair Care"),
                        ),
                      ],
                    ),
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
                    child: Column(
                      children: [
                        CircleAvatar(backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_circle_up,size: 80,color: Colors.black,
                          ),
                          radius: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 8),
                          child: Text("View All"),
                        )
                      ],
                    ),
                  )
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20,left: 8),
            child: Text("Recently Viewed Stores",style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 25
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                        GestureDetector(
                           onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ProductView();
                        }
                     ));
                print("Button tapped");
                   },
                  child:Container(
                    height: 150,
                    width: 100,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: Image.network(
                            'https://m.media-amazon.com/images/I/71z9qM84SKL._SX679_.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),

                        Text("Instant coffee"),
                      ],
                    ),
                  ),
                        ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                      child:   GestureDetector(
                          onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ProductView();
                           }
                            ));
                          print("Button tapped");
                            },
                          child: Container(
                      height: 150,
                      width: 100,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.network(
                              'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/18ac3091-5615-4b51-b833-f3d8f909b35c/vomero-16-road-running-shoes-h0KMSg.png',
                              fit: BoxFit.fill,
                            ),
                          ),

                          Text("Nike Shoes"),
                        ],
                      ),
                    ),
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:GestureDetector(
                    onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                               return ProductView();
                         }
                      ));
                    print("Button tapped");
                   },
                    child: Container(
                      height: 150,
                      width: 100,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.network(
                              'https://m.media-amazon.com/images/I/91VoPbGFbPL._AC_SL1500_.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),

                          Text("Samsung S23 Ultra"),
                        ],
                      ),
                    ),
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                      child:  GestureDetector(
                        onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ProductView();
                         }
                          ));
                          print("Button tapped");
                            },
                       child: Container(
                        height: 150,
                         width: 100,
                        child: Column(
                        children: [
                                 Container(
                                      height: 100,
                                       width: 100,
                                    child: Image.network(
                              'https://img1.gadgetsnow.com/gd/images/products/additional/large/G456307_View_1/accessories/smart-watches/hammer-active-2-0-1-95-inch-ips-display-orange-smart-watch.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),

                          Text("Hammer Active \nSmart Watch"),
                        ],
                      ),
                    ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                        child:  GestureDetector(
                           onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                             return ProductView();
                             }
                             ));
                            print("Button tapped");
                            },
                             child: Container(
                                height: 150,
                                width: 100,
                               child: Column(
                                children: [
                                Container(
                                     height: 100,
                                    width: 100,
                                   child: Image.network(
                                'https://skybags.co.in/cdn/shop/files/1_75ff29a4-c7d6-4d1f-b250-c99f206d1325_thumbnail_360x.png?v=1692786659',
                                fit: BoxFit.fill,
                            ),
                          ),

                                     Text("Sky bags"),
                        ],
                      ),
                             ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text("Trending Store",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
              child: Row(
              children: [
                       GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                        return ProductView();
                           }
                         ));
                       print("Button tapped");
                       },
                       child: Container(
                          color: Colors.white,
                          height: 100,
                          width: 100,
                           child: Column(
                           children: [
                            CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                              child: Image.network("https://1000logos.net/wp-content/uploads/2016/10/Apple-Logo.png"),
                      ),
                              Text("Apple"),
                    ],
                  ),
                  ),
                       ),
                  GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                   return ProductView();
                    }
                  ));
                  print("Button tapped");
                  },
                  child: Container(
                  color: Colors.white,
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: Image.network("https://images.samsung.com/is/image/samsung/assets/in/about-us/brand/logo/mo/360_197_1.png?"),
                      ),
                      Text("Samsung"),
                    ],
                  ),
                ),
                  ),
                  GestureDetector(
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProductView();
                  }
                  ));
                  print("Button tapped");
                  },
                  child: Container(
                  color: Colors.white,
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: Image.network("https://upload.wikimedia.org/wikipedia/commons/b/bc/Realme-realme-_logo_box-RGB-01.png"),
                      ),
                      Text("Realme"),
                    ],
                  ),
                ),
                  ),
                  GestureDetector(
                  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ProductView();
                      }
                 ));
                 print("Button tapped");
                    },
                   child:Container(
                  color: Colors.white,
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: Image.network("https://hoanghamobile.com/tin-tuc/wp-content/uploads/2021/03/logo-moi-xiaomi-1.jpg"),
                      ),
                      Text("Redmi"),
                    ],
                  ),
                ),
                  ),
              ],
            ),
          )
          ),
        ],
      ),
    );
  }
}
