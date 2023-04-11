import 'package:flutter/material.dart';

class UsersSearchResultsWidget extends StatelessWidget {
  final String name;
  final String username;
  final String bio;
  final String imgUrl;
  final bool isVerified;

  const UsersSearchResultsWidget(
    {Key? key,
      required this.name,
      required this.username,
      required this.bio,
      required this.imgUrl,
      required this.isVerified
    }) : super(key: key);

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
