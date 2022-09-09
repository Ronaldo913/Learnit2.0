class Network {
  String photo;
  String author;
  String avatar;
  String date;
  String type;
  int likeCount;
  int commentCount;
  String caption;
  List<String> tags;

  Network({
    required this.photo,
    required this.author,
    required this.avatar,
    required this.date,
    required this.type,
    required this.likeCount,
    required this.commentCount,
    required this.caption,
    required this.tags,
  });
}