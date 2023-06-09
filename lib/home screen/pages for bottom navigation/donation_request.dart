import 'package:flutter/material.dart';


class DonationRequest extends StatefulWidget {
  const DonationRequest({Key? key}) : super(key: key);

  @override
  State<DonationRequest> createState() => _DonationRequestState();
}

class _DonationRequestState extends State<DonationRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Donation request",style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 40,
          color: Colors.amberAccent,
        ),),
      ),
    );
  }
}
