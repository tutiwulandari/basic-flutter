import 'package:flutter/material.dart';

class ToDoScreen extends StatefulWidget {
  ToDoScreen({Key? key}) : super(key: key);

  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  List todos = [];
  TextEditingController todoName = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _listTodo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: todos.map((e) => new Text(e)).toList(),
      ),
    );
  }

  addTodos() {
    setState(() {
      todos.add(todoName.text);
    });
  }

  deleteTodos(String name) {
    setState(() {
      todos.removeWhere((element) => element == name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: new AppBar(title: new Text('TO DO LIST')),
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _formKey,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Name',
                              fillColor: Color(0xffF1F0F5),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide()),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide())),
                          controller: todoName,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your ToDo';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                addTodos();
                              }
                            },
                            child: Text('Submit',)),
                      )
                    ]),
                  ),
                ),

                // _listTodo()
                Expanded(
                  child: Card(
                    margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Scrollbar(
                        child: ListView.builder(
                            itemCount: todos.length,
                            padding: EdgeInsets.all(8),
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  ListTile(
                                    leading: Icon(
                                      Icons.person, color: Colors.pinkAccent,
                                      size: 40.0,
                                    ),
                                    title: Text(todos[index]),
                                    trailing: IconButton(
                                        onPressed: () =>
                                            {deleteTodos(todos[index])},
                                        icon: Icon(Icons.delete, color: Colors.pinkAccent,)),
                                  ),
                                ],
                              );
                            })),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
