import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => HState();
}

class HState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: SideBarMenu(),
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black,
          ),),
        backgroundColor: Colors.blue,),);
  }
}
