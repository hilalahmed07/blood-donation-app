import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Search",style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 40,
          color: Colors.amberAccent,
        ),),
      ),
    );
  }
}
