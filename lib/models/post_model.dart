class PostModel {
  String photo;
  String author;
  String avatar;
  DateTime date;
  int likeCount;
  int commentCount;
  String caption;
  List<String> tags;
  PostModel({
    required this.photo,
    required this.author,
    required this.avatar,
    required this.date,
    required this.likeCount,
    required this.commentCount,
    required this.caption,
    required this.tags,
  });
}
