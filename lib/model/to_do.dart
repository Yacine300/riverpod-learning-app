class ToDO {
  ToDO(
      {required this.userId,
      required this.complited,
      required this.id,
      required this.title});

  final int userId;
  final int id;
  final String title;
  final bool complited;

  factory ToDO.fromJson(Map<String, dynamic> json) => ToDO(
      userId: json["userId"],
      complited: json["completed"],
      id: json["id"],
      title: json["title"]);
}
