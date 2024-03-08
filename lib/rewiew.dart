import 'package:e_commerce_app/product_details.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  double _rating = 0;
  String _reviewText = '';

  void _submitReview() {
    // Implement logic to submit the review to your backend or storage
    // You can send _rating and _reviewText to your server or database
    // Here, we'll just print them for demonstration purposes
    print('Rating: $_rating');
    print('Review Text: $_reviewText');

    // Optionally, you can navigate back to the product details page or another screen
    // Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Write a Review',style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ProductDetails();
                }),
              );
              print("Button tapped");
            },
            child: Card(
              elevation: 4.0,
              margin: EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 120,
                    child: Image.network(
                      'https://rukminim2.flixcart.com/image/832/832/xif0q/mobile/b/i/x/-original-imagt4qptrkzwmxa.jpeg?q=70',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "realme C51 (Mint Green, 64 GB)(4 GB RAM)",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "Rs. 8,555",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(height: 4.0),
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
                          SizedBox(height: 8.0),
                          Container(
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Rate the product:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    _rating = 1;
                  });
                },
                child: Icon(
                  _rating >= 1 ? Icons.star : Icons.star_border,
                  size: 40,
                  color: Colors.amber,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _rating = 2;
                  });
                },
                child: Icon(
                  _rating >= 2 ? Icons.star : Icons.star_border,
                  size: 40,
                  color: Colors.amber,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _rating = 3;
                  });
                },
                child: Icon(
                  _rating >= 3 ? Icons.star : Icons.star_border,
                  size: 40,
                  color: Colors.amber,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _rating = 4;
                  });
                },
                child: Icon(
                  _rating >= 4 ? Icons.star : Icons.star_border,
                  size: 40,
                  color: Colors.amber,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _rating = 5;
                  });
                },
                child: Icon(
                  _rating == 5 ? Icons.star : Icons.star_border,
                  size: 40,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Write your review:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: TextFormField(
              maxLines: 5,
              onChanged: (text) {
                setState(() {
                  _reviewText = text;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter your review here',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _submitReview();
            },
            child: Text('Submit Review'),
          ),
        ],
      ),
    );
  }
}
