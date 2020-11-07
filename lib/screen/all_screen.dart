import 'package:flutter/material.dart';

import 'package:send_data_new_screen/model/todo_list.dart';

class NewDescriptionScreen extends StatelessWidget {
  final Todo description;
  final Todo icons;
  final Todo title;
  NewDescriptionScreen({this.description, this.icons, this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Description"),
        ),
        body: ListTile(
          title: Text(title.title),
          leading: Icon(icons.icon),
          subtitle: Text(description.description),
        ));
  }
}
