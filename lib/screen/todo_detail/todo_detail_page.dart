import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/todo_detail/todo_detail_bloc.dart';
import 'package:frontend/bloc/todo_detail/todo_detail_state.dart';
import 'package:frontend/qraphql/todo/__generated__/todo.query.data.gql.dart';

class TodoDetailPage extends StatelessWidget {
  final GGetTodosData_todos todo;

  TodoDetailPage({
    Key? key,
    required this.todo,
  }) : super(key: key);

  final _bloc = TodoDetailBloc();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoDetailBloc, TodoDetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("詳細"),
          ),
          body: Column(
            children: [
              Text(todo.body),
              Text(todo.createdAt.toString()),
            ],
          ),
        );
      },
      bloc: _bloc,
    );
  }
}
