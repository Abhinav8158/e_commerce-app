import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("OTP Verification",style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: Column(

        children: [
          SizedBox(
            height: 50,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text("We have sent a verification code  check your SMS", style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black
                ),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: PinCodeTextField(
              appContext: context,
              length: 6, // Length of the OTP
              onChanged: (value) {
                // Handle OTP input change
              },
              onCompleted: (value) {
                // Handle OTP verification when all digits are entered
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                inactiveColor: Colors.grey,
                activeColor: Colors.black,
                activeFillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(22),
              color: Colors.indigo,
            ),
            height: 50,
              width: 200,

            child: Center(
              child: Text(
                'Resend SMS',style: TextStyle(
                fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
