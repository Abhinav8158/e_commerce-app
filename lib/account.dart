import 'package:e_commerce_app/my_orders.dart';
import 'package:e_commerce_app/product_view.dart';
import 'package:e_commerce_app/q_and_a.dart';
import 'package:e_commerce_app/rewiew.dart';
import 'package:e_commerce_app/terms_condition.dart';
import 'package:e_commerce_app/wishlist.dart';
import 'package:flutter/material.dart';

import 'Select language.dart';
import 'account_edit.dart';
import 'helpcenter.dart';
import 'login.dart';
import 'my_addresses.dart';

class Account extends StatefulWidget {
  const Account({Key? key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // Adjust the height as needed
        child: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hey! Abhinav",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
          //  Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(left: 220),
          //       child: Container(),
          //     ),
          //   ],
          // ),
              Row(
          children: [
               Padding(
                padding: const EdgeInsets.only(top: 8),
                  child: Text(
                "Join",
                style: TextStyle(fontSize: 15,color: Colors.black),
              ),
            ),
                 SizedBox(width: 5),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
              "Plus Premium",
              style: TextStyle(
                color: Colors.deepPurple[900],
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
                  ),
            SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                "now! >",
                style: TextStyle(fontSize: 15,color: Colors.black),
              ),
            ),
          ],
        ),
            ],
          ),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right:50),
          //     child: Container(
          //       width: 45,
          //       height: 50,
          //       decoration: BoxDecoration(
          //         border: Border.all(
          //           color: Colors.grey,
          //           width: 1.0,
          //         ),
          //         borderRadius: BorderRadius.circular(50),
          //       ),
          //       child: Row(
          //         children: [
          //           CircleAvatar(
          //             radius: 10,
          //             child: Image.network('https://media.istockphoto.com/id/1418687315/photo/gold-coin-dollar-us-currency-money-icon-sign-or-symbol-business-and-financial-exchange-3d.jpg?s=612x612&w=0&k=20&c=I7y_C7XuraEbmbycnP_BEOYw6iI_Csu4GyGS-sqtUac=',
          //               fit: BoxFit.fill,),
          //           ),
      //               Text(
      //                 "123",
      //                 style: TextStyle(color: Colors.black),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
          backgroundColor: Colors.white,
        ),
      ),
       body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 220),
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15),
              child: Row(
                children: [
                   GestureDetector(
                  onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
                       return MyOrders();
                     }
                    ));
                    print("Button tapped");
                      },

                      child: Container(
                    width: 175,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),

                          child: Icon(
                            Icons.outbox,
                            color: Colors.indigoAccent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Orders",style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ],
                    ),
                  ),
                   ),
                  SizedBox(width: 10),
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
                        height: 50,
                        decoration: BoxDecoration(
                        border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                         child: Row(
                      children: [
                          Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.favorite_outline_sharp,
                            color: Colors.indigoAccent,
                          ),
                        ),
                          Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Wishlist",style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ],
                    ),
                  ),
                       ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    width: 175,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.card_giftcard,
                            color: Colors.indigoAccent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Coupons",style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HelpCenter();
                  }
                  ));
                  print("Button tapped");
                },
                 child: Container(
                    width: 175,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.headset_mic_outlined,
                            color: Colors.indigoAccent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Help Center",style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ],
                    ),
                  ),
              ),
                ],
              ),
            ),
            Container(
              
              height: 180,
              width: 360,
              color: Colors.white12,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 230),
                    child: Text("Account Settings",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),

                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return AccountEdit();
                            }),
                          );
                          print("Button tapped");
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.account_circle_outlined,
                              color: Colors.indigoAccent,
                              size: 30,
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Edit Profile",
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                    padding: const EdgeInsets.only(top: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return MyAddresses();
                            }),
                          );
                          print("Button tapped");
                        },
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined,color: Colors.indigoAccent,size: 30,),
                        SizedBox(width: 20,),
                        Text("Saved Addresses",style: TextStyle(color: Colors.black,fontSize: 20),),
                      ],
                    ),
                  ),
                    ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return LanguageSelectionPage();
                          }),
                        );
                        print("Button tapped");
                      },
                    child: Row(
                      children: [
                        Icon(Icons.language_outlined,color: Colors.indigoAccent,size: 30,),
                        SizedBox(width: 20,),
                        Text("Select Language",style: TextStyle(color: Colors.black,fontSize: 20),),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
              
            ),
            SizedBox(),
            Container(

              height: 130,
              width: 360,
              color: Colors.white12,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 270),
                    child: Text("My Activity",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ReviewPage();
                          }),
                        );
                        print("Button tapped");
                      },
                    child: Row(
                      children: [
                        Icon(Icons.rate_review_outlined,color: Colors.indigoAccent,size: 30,),
                        SizedBox(width: 20,),
                        Text("Rewiew",style: TextStyle(color: Colors.black,fontSize: 20),),
                      ],
                    ),
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ChatScreen();
                          }),
                        );
                        print("Button tapped");
                      },

                    child: Row(
                      children: [
                        Icon(Icons.mark_chat_unread_outlined,color: Colors.indigoAccent,size: 30,),
                        SizedBox(width: 20,),
                        Text("Questions & Answers",style: TextStyle(color: Colors.black,fontSize: 20),),
                      ],
                    ),
                  ),
                  ),
                ],
              ),

            ),
            Container(

              height: 150,
              width: 360,
              color: Colors.white12,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 170),
                    child: Text("Feedback &  Information",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Terms();
                          }),
                        );
                        print("Button tapped");
                      },

                      child: Row(
                      children: [
                        Icon(Icons.policy_outlined,color: Colors.indigoAccent,size: 30,),
                        SizedBox(width: 20,),
                        Text("Terms, Policies and Licenses",style: TextStyle(color: Colors.black,fontSize: 20),),
                      ],
                    ),
                  ),
                  ),

                ],
              ),

            ),
            Container(color: Colors.grey,height: 65,width: 380,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Login();
                            }),
                                (route) => false, // Remove all previous routes from the stack
                          );
                          print("Button tapped");
                        },



                        child:Container(
                        height: 55,
                        width: 370,
                        color: Colors.white,
                        alignment: Alignment.center, // Align the child (Text) to the center
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )

                  ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
