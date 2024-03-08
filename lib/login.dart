

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'otp.dart';



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phone_number=TextEditingController();
  void ininState() {
    super.initState();
    mobileNumber = "";
  }

  @override
  String mobileNumber = '';

  bool isAPIcallProcess = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height:250,
                    width: 150,

                    decoration: BoxDecoration(  color: Colors.white,image: DecorationImage(
                      image: AssetImage("Aseets/fish-blog-post-thumbnail-without-text 1 (1).png"),
                      fit: BoxFit.fill,
                    ),),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Introducing a",style: TextStyle(fontSize: 30,
                      fontWeight: FontWeight.bold),),
                ),


              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("new ",style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(right:5),
                  child: Text("SHOPPING",style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold,color:  Colors.indigo,),),
                ),
                Text("experience",style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold),),


              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left:80,),
                    child: Container(
                      height: 2,
                      width: 20,
                      color: Colors.black45,

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                  child: Text("Log in or Sign Up"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right:80,),
                    child: Container(
                      height: 2,
                      width: 20,
                      color: Colors.black45,

                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 40),
              child: Container(height: 50,
                child: TextFormField(


                  controller: phone_number,
                  keyboardType: TextInputType.number,

                  onChanged: (String value){
                    if (value.length > 10) {

                      mobileNumber = value;
                    }
                  },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10,),
                  ],

                  style: TextStyle(color: Colors.black26),
                  cursorColor: Colors.black54,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 1.5,
                      color:  Colors.indigo,),borderRadius:BorderRadius.all(
                      Radius.circular(10),
                    ), ),

                    prefixIcon: Container(
                      height: 60,
                      width: 70,

                      decoration: BoxDecoration(color: Colors.indigo,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("+91",style:TextStyle(
                              fontSize:20,color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                    hintText: "Enter your Phone number",
                    // label: Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Text(
                    //     "Enter your Phone number",
                    //     style: TextStyle(color: Colors.black26),
                    //   ),
                    // ),
                    // suffixIcon: Icon(Icons.mic,color: Colors.green,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Otp(),
                          )
                        );
                      },

                      // {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => Otp()),
                      //   );
                      // },
                      child: Container(
                        height: 50,
                        width: 100,

                        decoration: BoxDecoration(  color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Continue",style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white
                            ),),
                          ],
                        ),
                      ),
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
