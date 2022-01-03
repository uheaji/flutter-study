class Todo {
  String? title;
  String? content;
  int? active;
  int? id;

  Todo({this.title, this.content, this.active, this.id});

  Map<String, dynamic> toMap() {
    // toMap()함수는 데이터를 Map 형태로 반환해줌.
    return {'id': id, 'title': title, 'content': content, 'active': active};
  }
}
