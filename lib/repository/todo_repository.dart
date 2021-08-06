import 'package:projects/model/to_do.dart';

class ToDoRepository {
  List<ToDo> todos = <ToDo>[];
  List<ToDo> getListToDo() {
    return todos;
  }

  addTodos(ToDo toDo) {
    todos.add(toDo);
  }

  deleteTodos(int id) {
    todos.removeWhere((element) => element.id == id);
  }
}
