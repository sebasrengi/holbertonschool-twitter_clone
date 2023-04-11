class User {
  String key;
  String userID;
  String email;
  String userName;
  String displayName;
  String imageUrl;
  String bio;
  String coverImgUrl;
  int followers;
  int following;
  List<String> followersList;
  List<String> followingList;

  User({
    this.key = 'key',
    this.userID = 'userID',
    this.email = 'email',
    this.userName = 'userName',
    this.displayName = 'displayName',
    this.imageUrl = 'imageUrl',
    this.bio = 'No bio available',
    this.coverImgUrl = 'imageUrl',
    this.followers = 0,
    this.following = 0,
    this.followersList = const [''],
    this.followingList = const [''],
  });

  User.fromJson(Map<String, dynamic> map) {
    key = map['key'];
    userID = map['userID'];
    email = map['email'];
    userName = map['userName'];
    displayName = map['displayName'];
    imageUrl = map['imageUrl'];
    bio = map['bio'];
    coverImgUrl = map['coverImgUrl'];
    followers = map['followers'];
    following = map['following'];
    followersList = map['followersList']?.cast<String>();
    followingList = map['followingList']?.cast<String>();
  }

  get id => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['key'] = this.key;
    data['userID'] = this.userID;
    data['email'] = this.email;
    data['userName'] = this.userName;
    data['displayName'] = this.displayName;
    data['imageUrl'] = this.imageUrl;
    data['bio'] = this.bio;
    data['coverImgUrl'] = this.coverImgUrl;
    data['followers'] = this.followers;
    data['following'] = this.following;
    data['followersList'] = this.followersList;
    data['followingList'] = this.followingList;
    return data;
  }
}


User createNewUser() {
  final uuid = Uuid();
  String userID = uuid.v4();
  String userName = uuid.v4().substring(0, 8);
  return User(
    userID: userID,
    userName: userName,
    imageUrl: 'imageUrl',
    coverImgUrl: 'coverImgUrl',
  );
}
