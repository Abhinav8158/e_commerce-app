import 'package:e_commerce_app/order_summary.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProductDetails(),
  ));
}

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String selectedColor = 'Black';
  String selectedStorage = '128GB';
  String selectedRam = '8GB';

  final List<String> colors = ['Black', 'Blue', 'Red'];
  final List<String> storageOptions = ['128GB', '256GB', '512GB'];
  final List<String> ramOptions = ['8GB', '16GB', '32GB'];

  bool isColorDropdownOpen = false;
  bool isStorageDropdownOpen = false;
  bool isRamDropdownOpen = false;

  void toggleColorDropdown() {
    setState(() {
      isColorDropdownOpen = !isColorDropdownOpen;
      isStorageDropdownOpen = false;
      isRamDropdownOpen = false;
    });
  }

  void toggleStorageDropdown() {
    setState(() {
      isStorageDropdownOpen = !isStorageDropdownOpen;
      isColorDropdownOpen = false;
      isRamDropdownOpen = false;
    });
  }

  void toggleRamDropdown() {
    setState(() {
      isRamDropdownOpen = !isRamDropdownOpen;
      isColorDropdownOpen = false;
      isStorageDropdownOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 220,
                color: Colors.white,
                child: ImageGallery(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 310),
                child: Text(
                  "Color: $selectedColor",
                  style: TextStyle(
                    color: isColorDropdownOpen ? Colors.blue : Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: colors.map((color) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedColor = color;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: selectedColor == color
                              ? Colors.blue
                              : Colors.black,
                        ),
                        child: Text(color),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text(
                  "Storage: $selectedStorage",
                  style: TextStyle(
                    color: isStorageDropdownOpen ? Colors.blue : Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: storageOptions.map((storage) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedStorage = storage;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: selectedStorage == storage
                              ? Colors.blue
                              : Colors.black,
                        ),
                        child: Text(storage),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 320),
                child: Text(
                  "RAM: $selectedRam",
                  style: TextStyle(
                    color: isRamDropdownOpen ? Colors.blue : Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: ramOptions.map((ram) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedRam = ram;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary:
                          selectedRam == ram ? Colors.blue : Colors.black,
                        ),
                        child: Text(ram),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: Icon(Icons.add_shopping_cart),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        height: 80,
                        width: 140,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "Pay with EMI",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
       GestureDetector(
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
                      height: 80,
                      width: 140,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
       ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageGallery extends StatelessWidget {
  final List<String> images = [
    'https://rukminim2.flixcart.com/image/832/832/xif0q/mobile/b/i/x/-original-imagt4qptrkzwmxa.jpeg?q=70',
    'https://rukminim2.flixcart.com/image/832/832/xif0q/mobile/m/n/m/-original-imagt4qpby4t6gze.jpeg?q=70',
    'https://rukminim2.flixcart.com/image/832/832/xif0q/mobile/t/r/i/-original-imagt4qp6vrmeshg.jpeg?q=70',
    'https://rukminim2.flixcart.com/image/832/832/xif0q/mobile/z/e/r/-original-imagt4qzyydjs5tq.jpeg?q=70',
    'https://rukminim2.flixcart.com/image/832/832/xif0q/mobile/d/j/g/-original-imagt4qp4jguhgbw.jpeg?q=70',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal, // Horizontal scrolling
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0), // Adjust the spacing between images
          child: Image.network(
            images[index],
            width: 200.0, // Set the width of each image as needed
            height: 200.0, // Set the height of each image as needed
            fit: BoxFit.fill, // Adjust the image scaling as needed
          ),
        );
      },
    );
  }
}
