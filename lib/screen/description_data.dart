import 'package:flutter/material.dart';
import 'package:send_data_new_screen/model/todo_list.dart';
import 'all_screen.dart';
import './title_data.dart';

class DescriptionScreen extends StatelessWidget {
  final Todo description;
  final Todo icons;
  final Todo title;
  DescriptionScreen({this.description, this.icons, this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Description"),
        ),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(todos[index].title),
            trailing: Icon(todos[index].icon),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewDescriptionScreen(
                          title: todos[index],
                          icons: todos[index],
                          description: todos[index],
                        ))),
          ),
        ));
  }
}
