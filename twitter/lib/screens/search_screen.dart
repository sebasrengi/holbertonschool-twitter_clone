import 'package:flutter/material.dart';
import 'package:twitter/assets/DummyData.dart';
import 'package:twitter/widgets/bar_menu.dart';
import 'package:twitter/widgets/users_search_results_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _searchconttroller = TextEditingController();

  @override
  void initState() {
    _searchconttroller = _searchconttroller;
    super.initState();
  }

  @override
  void dispose() {
    _searchconttroller = _searchconttroller;
    super.dispose();
  }

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
        //automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Container(
          height: 38,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade200,
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade500,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none
              ),
              hintStyle: TextStyle(fontSize: 14, color: Colors.grey.shade500),
              hintText: "Search.."
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => Null,
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.lightBlue,
              ))
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (context, index) {
            final user = userList[index];
            return UsersSearchResultsWidget(
              /*name: user.name,
              username: user.username,
              bio: user.bio,
              imgUrl: user.imUrl,
              isVerified: user.isVerified,*/
            name: 'John Doe',
            username: '@johndoe',
            bio: 'I am a software developer',
            imgUrl: 'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
            isVerified: true,
          );
          },
      )),
      bottomNavigationBar: BarMenu(),
    );
  }
}
