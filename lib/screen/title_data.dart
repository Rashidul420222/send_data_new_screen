import 'package:flutter/material.dart';
import 'package:send_data_new_screen/model/todo_list.dart';
import 'package:send_data_new_screen/screen/description_data.dart';

class TodoScreen extends StatelessWidget {
  // final List<Todo> todoTile;
  // TodoScreen({this.todoTile});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(todos[index].title),
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DescriptionScreen(
                icons: todos[index],
                description: todos[index],
              ),
            )),
      ),
    );
  }
}

final todos = List<Todo>.generate(
    200000,
    (index) => Todo(
          title: "Todo List No $index",
          icon: Icons.ad_units_rounded,
          description: "Example todo list data pase in app $index",
        ));
