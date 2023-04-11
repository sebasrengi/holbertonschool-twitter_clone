import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final Post post;
  final String name;
  final String subname;
  final String Imgurl;

  const PostWidget({
    super.key,
    required this.post,
    required this.name,
    required this.subname,
    required this.Imgurl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19),
      child: Container(
        child: Row(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(Imgurl),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "$name",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.verified,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "@$subname",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey.shade400),
                    ),
                    SizedBox(
                      width: 62,
                    ),
                    IconButton(
                        onPressed: () => Null,
                        icon: Icon(
                          Icons.more_horiz,
                          size: 30.0,
                        )),
                  ],
                ),
                Expanded(
                  child: Container(
                    width: 254,
                    height: 100,
                    //color: Colors.blue,
                    child: Text(
                      post,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () => Null,
                        icon: Icon(
                          Icons.sms_outlined,
                          size: 30.0,
                          color: Colors.grey.shade600,
                        )),
                    IconButton(
                        onPressed: () => Null,
                        icon: Icon(
                          Icons.repeat_outlined,
                          size: 30.0,
                          color: Colors.grey.shade600,
                        )),
                    IconButton(
                        onPressed: () => Null,
                        icon: Icon(
                          Icons.favorite,
                          size: 30.0,
                          color: Color.fromARGB(255, 244, 41, 108),
                        )),
                    IconButton(
                        onPressed: () => Null,
                        icon: Icon(
                          Icons.share,
                          size: 30.0,
                          color: Colors.grey.shade600,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
