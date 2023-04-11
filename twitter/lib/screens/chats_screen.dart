import 'package:flutter/material.dart';
import 'package:twitter/widgets/bar_menu.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(6),
          child: CircleAvatar(
            maxRadius: 10,
            backgroundImage: NetworkImage(
                'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png'),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Chat',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 25
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => Null,
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.lightBlue,
              size: 32.0,
            ))
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Center(
                child: Text(
                  "No Chats Yet",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: BarMenu(),
    );
  }
}