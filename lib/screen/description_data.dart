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
            leading: Icon(todos[index].icon),
            title: Text("First Data Pass ${todos[index].title}"),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NewDescriptionScreen(
                          icons: todos[index],
                          description: todos[index],
                        ))),
          ),
        ));
  }
}
