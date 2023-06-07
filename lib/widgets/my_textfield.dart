import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hinttext;
  final IconData prefixicon;
  final IconData? suffixicon;
  const MyTextField({
    required this.hinttext,
    required this.prefixicon,
    this.suffixicon,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 374,
      decoration: BoxDecoration(
          color: Color(0xffF8F8F8)
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            prefixIcon: Icon(prefixicon,color: Color(0xffFF2156),size: 30,),
            prefixIconConstraints: BoxConstraints(minWidth: 40),
            prefix: SizedBox(
              width: 43,
            ),
             suffixIcon: suffixicon != null ? Icon(suffixicon) : null,
            // contentPadding: EdgeInsets.symmetric(horizontal: 16),
            //border: OutlineInputBorder(),
            hintText: hinttext,
            hintStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Color(0xff272A2F),
            )
        ),
      ),
    );
  }
}
