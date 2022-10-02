import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/todo_list/todo_list_bloc.dart';
import 'package:frontend/bloc/todo_list/todo_list_state.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({Key? key,}) : super(key: key);

  final _bloc = TodoListBloc();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoListBloc, TodoListState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Container(),
        );
      },
      bloc: _bloc,
    );
  }
}
