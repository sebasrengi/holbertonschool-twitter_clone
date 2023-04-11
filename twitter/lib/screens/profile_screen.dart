import 'package:flutter/material.dart';
import 'package:twitter/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = FirebaseFirestore.instance;

class ProfileScreen extends StatefulWidget {
  final String userID;

  ProfileScreen({required this.userID});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User>(
      future: getUserByID(widget.userID),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          User user = snapshot.data;
          if (user.id == currentUser.id) {
            return Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileScreen(),
                    ),
                  );
                },
                child: Icon(Icons.edit),
              ),
            );
          } else {
            return Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (currentUser.following.contains(user.id)) {
                      currentUser.following.remove(user.id);
                      user.followers.remove(currentUser.id);
                    } else {
                      currentUser.following.add(user.id);
                      user.followers.add(currentUser.id);
                    }
                  });
                  updateUser(currentUser);
                  updateUser(user);
                },
                child: currentUser.following.contains(user.id)
                    ? Icon(Icons.check)
                    : Icon(Icons.add),
              ),
            );
          }
        } else if (snapshot.hasError) {
          return Scaffold();
        }
        return Scaffold(
            // Aquí iría el código para mostrar un spinner mientras esperamos a que se
            );
      },
    );
  }

  Future<User> getUserByID(String userID) async {
    // Aquí iría el código para recuperar el usuario de la base de datos mediante su ID
  }

  void UpdateUser(User user) async {
    try {
      await _firestore.collection('users').doc(user.id).setData(user.toMap());
    } catch (error) {
      print(error);
    }
  }
}


