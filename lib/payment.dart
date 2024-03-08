import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.white,
      title: Text('Payment Selection',style: TextStyle(
        color: Colors.black
      ),),
    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            onTap: () {
              // Handle credit/debit card selection
              // You can navigate to a payment form or perform any desired action here
            },
            leading: Icon(Icons.credit_card),
            title: Text('UPI'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            onTap: () {
              // Handle credit/debit card selection
              // You can navigate to a payment form or perform any desired action here
            },
            leading: Icon(Icons.credit_card),
            title: Text('Credit/Debit Card'),
            trailing: Icon(Icons.arrow_forward),
          ),
          Divider(),
          ListTile(
            onTap: () {
              // Handle PayPal selection
              // You can navigate to a PayPal login page or perform any desired action here
            },
            leading: Icon(Icons.payment),
            title: Text('PayPal'),
            trailing: Icon(Icons.arrow_forward),
          ),
          Divider(),
          ListTile(
            onTap: () {
              // Handle credit/debit card selection
              // You can navigate to a payment form or perform any desired action here
            },
            leading: Icon(Icons.credit_card),
            title: Text('Cash on Delivery'),
            trailing: Icon(Icons.arrow_forward),
          ),
          ListTile(
            onTap: () {
              // Handle credit/debit card selection
              // You can navigate to a payment form or perform any desired action here
            },
            leading: Icon(Icons.credit_card),
            title: Text('EMI(Easy Installments)'),
            trailing: Icon(Icons.arrow_forward),
          ),
          Divider(),
          SizedBox(height: 330,),
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
