import 'package:flutter/cupertino.dart';

class Todo {
  final String title;
  final String description;
  final IconData icon;
  final Function onTapNew;

  Todo({this.title, this.description, this.icon, this.onTapNew});
}
