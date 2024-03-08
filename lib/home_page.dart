import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/account.dart';
import 'package:e_commerce_app/cart.dart';
import 'package:e_commerce_app/categoery.dart';
import 'package:e_commerce_app/notification.dart';
import 'package:e_commerce_app/product_view.dart';
import 'package:e_commerce_app/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
          actions:[ IconButton(
          icon: Icon(Icons.search,
              color: Colors.white,),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)
                =>Search(),
                ));
              },
              color: Colors.black,
            ),
    ]
          ),

      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)
                =>Home()));
                // Handle Home item tap
              },
            ),
            ListTile(
              leading: Icon(Icons.category_outlined),
              title: const Text('Category'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)
                =>Category()));
                // Handle Category item tap
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications_none_sharp),
              title: const Text('Notification'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                =>Notifications()));

              },
            ),ListTile(
              leading: Icon(Icons.account_circle_outlined),
              title: const Text('Account'),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)
              =>Account()
              ));

              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart_outlined),
              title: Text('Cart'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)
                =>Cart()));
              },
            )
            // Add more ListTile items as needed
          ],
        ),
      ),

      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
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
                        CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://fdn.gsmarena.com/imgroot/static/headers/makers/apple-2023-1.jpg',
                        ),
                      ), // child: Image.network(
                            //   "https://5.imimg.com/data5/SELLER/Default/2020/12/WI/VR/VK/118676901/oppo-f17-pro-mobile-1000x1000.jpg",
                            //   width: 100, // Adjust the width and height as needed
                            //   height: 100,
                            //   fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                            // ),
                          SizedBox(height: 10), // Add some spacing between the image and text
                          Text("Mobile"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
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
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            backgroundImage: NetworkImage("https://www.ikea.com/in/en/images/products/brimnes-tv-bench-black__0851278_pe725293_s5.jpg?f=m"),
                            // child: Image.network(
                            //   "https://instorestatic.tcl.com/media/catalog/product/cache/777512b053c40d884a7f7ea362da8a02/s/5/s53_front-1_3.png",
                            //   width: 100, // Adjust the width and height as needed
                            //   height: 100,
                            //   fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                            // ),
                          ),
                          SizedBox(height: 10), // Add some spacing between the image and text
                          Text("    Tv and\nAppliances"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
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
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage("https://stylecaster.com/wp-content/uploads/2019/09/what-to-wear-for-fashion-week.jpg?w=960&h=540&crop=1"),
                            radius: 30,
                            // child: Image.network(
                            //   "https://stylecaster.com/wp-content/uploads/2019/09/what-to-wear-for-fashion-week.jpg?w=960&h=540&crop=1",
                            //   width: 100, // Adjust the width and height as needed
                            //   height: 100,
                            //   fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                            // ),
                          ),
                          SizedBox(height: 10), // Add some spacing between the image and text
                          Text("Fashion"),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15),
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
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            backgroundImage: NetworkImage("https://i.pinimg.com/564x/77/af/39/77af39aec3484cf2438b91f0010b1970.jpg"),
                            // child: Image.network(
                            //   "https://i.pinimg.com/564x/77/af/39/77af39aec3484cf2438b91f0010b1970.jpg",
                            //   width: 100, // Adjust the width and height as needed
                            //   height: 100,
                            //   fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                            // ),
                          ),
                          SizedBox(height: 10), // Add some spacing between the image and text
                          Text("Home"),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15),
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
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgtkcHCBP_8ro-SrB5LRWL-SUPVEFAztDJhA&usqp=CAU",),
                            // child: Image.network(
                            //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgtkcHCBP_8ro-SrB5LRWL-SUPVEFAztDJhA&usqp=CAU",
                            //   width: 100, // Adjust the width and height as needed
                            //   height: 100,
                            //   fit: BoxFit.cover, // Use BoxFit.cover to maintain aspect ratio
                            // ),
                          ),
                          SizedBox(height: 10), // Add some spacing between the image and text
                          Text("Toy"),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  MyCarouselSlider(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 8),
              child: Text("Deals for you",style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      Container(
                        height: 150,
                        width: 172,
                        color: Colors.grey,
                        child: Image.network('https://cdn.thewirecutter.com/wp-content/media/2023/01/businesslaptops-2048px-0098-2x1-1.jpg?auto=webp&quality=75&crop=2:1&width=480&dpr=2',
                        fit: BoxFit.fill,
                        ),
                      ),
                      Text("Laptops"),
                    ],
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      Container(
                        height: 150,
                        width: 172,
                        color: Colors.grey,
                        child: Image.network('https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/90a1e2f3-6761-4c08-bf60-84e3ecea4c0e/air-huarache-shoes-7T1GPr.png',
                        fit: BoxFit.fill,
                        ),
                      ),
                      Text('Shoes'),
                    ],
                  ),
                ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      Container(
                        height: 150,
                        width: 172 ,
                        color: Colors.grey,
                        child: Image.network('https://image01.realme.net/general/20230927/169577750456608d4cca2489c47bc8e82b0c3e7228b4d.jpg.webp',
                        fit: BoxFit.fill,
                        ),
                      ),
                      Text("Mobiles")
                    ],
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      Container(
                        height: 150,
                        width: 172 ,
                        color: Colors.grey,
                        child: Image.network('https://cdn.thewirecutter.com/wp-content/media/2023/07/backpacks-2048px-9944-1.jpg?auto=webp&quality=75&width=480&dpr=2',
                       fit:BoxFit.fill ,
                        ),
                      ),
                      Text("Bags")
                    ],
                  ),
                ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Up to 70% off",style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 17
              ),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
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
                      Container(
                        height: 100,
                        width: 100.6,
                        color: Colors.grey,
                        child: Image.network("https://i.ebayimg.com/images/g/md0AAOSwgppbZjMg/s-l1600.jpg",
                        fit: BoxFit.fill,),
                      ),
                      Text("Glasses"),
                    ],
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey,
                        child: Image.network('https://www.jiomart.com/images/product/original/rv7tv9ppwz/tior-women-burgundy-georgette-a-line-dress-m-product-images-rv7tv9ppwz-0-202301192025.jpg?im=Resize=(1000,1000)',fit: BoxFit.fill,),
                      ),
                      Text("Tops")
                    ],
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey,
                        child: Image.network('https://m.media-amazon.com/images/I/31yn5Hc-tzL._SX300_SY300_QL70_FMwebp_.jpg'),
                      ),
                      Text("Fan")
                    ],
                  ),
                ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
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
                      Container(
                        height: 100,
                        width: 100.6,
                        color: Colors.grey,
                        child: Image.network('https://www.dove-india.com/cdn/shop/products/S_C_G-01_3000x.jpg?v=1680868150'),
                      ),
                      Text("Shampoo")
                    ],
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey,
                        child: Image.network('https://zebster.in/cdn/shop/products/Z-Drum-pic1_700x.jpg?v=1629977269'),
                      ),
                      Text("Speakers")

                    ],
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey,
                        child: Image.network('https://d20ce51t0ju3pt.cloudfront.net/images/single-product-images/fast-up-fusion-tech-protein-elevate-clinically-tested-for-2x-faster-absorption-1-1528_1692704801.webp'),
                      ),
                      Text("Protein Powder")
                    ],
                  ),
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
void main() => runApp(Home());

class MyCarouselSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0, // Set the height of the carousel
        autoPlay: true, // Enable auto-play
        autoPlayInterval: Duration(seconds: 10), // Auto-play interval
        autoPlayAnimationDuration: Duration(milliseconds: 2000), // Animation duration
        autoPlayCurve: Curves.fastOutSlowIn, // Animation curve
        pauseAutoPlayOnTouch: true, // Pause auto-play on touch
      ),
        items: [
          // Replace with your image paths and button actions
          buildCarouselItem(
            imageUrl: 'https://www.apple.com/newsroom/images/2023/09/apple-unveils-iphone-15-pro-and-iphone-15-pro-max/article/Apple-iPhone-15-Pro-lineup-hero-230912_Full-Bleed-Image.jpg.large_2x.jpg',
            onTap: () {
              // Action for the first item
              print('Tapped on the first item');
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProductView();
              }));
            },
          ),
          buildCarouselItem(
            imageUrl: 'https://image-us.samsung.com/SamsungUS/home/mobile/mobile-accessories/phones/leather-cases/Sustainability_DM3_Leather_Case_Desktop.jpg?-benefit-bottom-jpg',
            onTap: () {
              // Action for the second item
              print('Tapped on the second item');
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProductView();
              }));
            },
          ),
          buildCarouselItem(
            imageUrl: 'https://images.samsung.com/in/smartphones/galaxy-z-flip4/images/galaxy-z-flip4_highlights_kv.jpg',
            onTap: () {
              // Action for the third item
              print('Tapped on the third item');
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProductView();
              }));
            },
          ),
        ],
    );
  }

  Widget buildCarouselItem({
    required String imageUrl,
    required VoidCallback onTap,
  }) {
    return Builder(
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

// void main() => runApp(MaterialApp(home: Home()));
