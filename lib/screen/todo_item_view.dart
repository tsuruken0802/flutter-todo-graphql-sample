import 'package:flutter/material.dart';

class TodoItemView extends StatelessWidget {
  final String title;

  final String date;

  const TodoItemView({
    Key? key,
    required this.title,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(title),
        ),
        const Padding(padding: EdgeInsets.only(left: 8.0)),
        Text(date),
      ],
    );
  }
}
