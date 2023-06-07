import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color color;
  final String text;
  final Color textcolor;
  const MyContainer({
    required this.text,
    this.color = Colors.white,
    required this.textcolor,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 374,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 2,color: Color(0xffFF2156))
      ),
      child: Center(
        child: Text(text,style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 22,
          color: textcolor,
        ),),
      ),
    );
  }
}
