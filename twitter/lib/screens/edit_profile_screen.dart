import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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