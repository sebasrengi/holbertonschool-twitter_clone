import 'package:flutter/material.dart';

class EditPostScreen extends StatelessWidget {
  const EditPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,         
          backgroundImage: NetworkImage(imgUrl),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              )
            ),
            Text(
              bio,
              style: TextStyle(
                fontSize: 23
              )
            ),
          ],
        ),
        subtitle: Text(
          username,
          style: TextStyle(
            fontSize: 23
          )
        ),
      ),
    );
  }
}