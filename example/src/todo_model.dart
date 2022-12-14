import 'package:postgrest_crud/postgrest_crud.dart';

class Todo {
  int? id;
  String item;
  String? details;
  Todo({this.id, required this.item, this.details});
}

class TodoClient extends Client<Todo> {
  @override
  String get modelName => "todo";

  @override
  String get primaryKey => "id";

  TodoClient({required super.connection});

  @override
  Todo fromJson(JsonObject json) {
    return Todo(
        id: json['id'],
        item: json['item'] ?? "MissingItem",
        details: json['details']);
  }

  @override
  JsonObject toJson(Todo model) {
    JsonObject jsonObject = {};
    if (model.id != null) {
      jsonObject['id'] = model.id;
    }
    jsonObject['item'] = model.item;
    jsonObject['details'] = model.details;

    return jsonObject;
  }
}
