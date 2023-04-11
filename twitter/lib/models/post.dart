class Post {
  String text;
  String userID;
  int likeCount;
  List<String> likeList;

  Post({
    this.text = '',
    this.userID = '',
    this.likeCount = 0,
    this.likeList = const [''],
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['text'] = this.text;
    data['userID'] = this.userID;
    data['likeCount'] = this.likeCount;
    data['likeList'] = this.likeList;
    return data;
  }

  Post.fromJson(Map<String, dynamic> map) {
    text = map['text'];
    userID = map['userID'];
    likeCount = map['likeCount'];
    likeList = map['likeList']?.cast<String>();
  }
}
