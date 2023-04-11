import 'package:flutter/material.dart';
import 'package:twitter/widgets/bar_menu.dart';
import 'package:twitter/widgets/side_bar_menu.dart';
import 'package:twitter/widgets/users_search_results_widget.dart';
import 'package:twitter/widgets/post_widget.dart';
import 'package:twitter/screens/edit_post_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 25
          )
        ),
      ),
      drawer: SideBarMenu(),
      body: Row(
        children: [
          //Text('Hello'),
          PostWidget(
            name: 'Juli', 
            subname: 'Carlosam', 
            post: 'post fdsfu sdfhsi fdsiuhfre suhfwi fiurfheirh sdhfri', 
            tag: 'tag', 
            Imgurl: 'Imgurl')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditPostScreen(),
            ),
          );
        },
      
      bottomNavigationBar: BarMenu(),
      
    );
  }
}