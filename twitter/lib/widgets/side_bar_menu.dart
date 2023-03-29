import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideBarMenu> createState() => MState();
}

class MState extends State<SideBarMenu> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext action) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[CircleAvatar(backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/60363752?s=400&u=1a49c9139906f74b3e886d95dc4751cc7d5f31b6&v=4'), maxRadius: 27,),],
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[Text('Jane Doe',),],
                  ),),
                Row(
                  children: <Widget>[Text('0 Followers'), SizedBox(width: 20), Text('0 Following'),],
                ),],),),
          ListTile(
            leading: Icon(Icons.man),
            title: Text('Profile'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notes),
            title: Text('Lists'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Bookmark'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.flash_on_sharp),
            title: Text('Moments'),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Settings and privacy', style: TextStyle(fontWeight: FontWeight.bold,)
               ),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Help Center', style: TextStyle(fontWeight: FontWeight.bold,)),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Logout', style: TextStyle(fontWeight: FontWeight.bold,)),
            onTap: () => null,
          ),],),);
  }
}