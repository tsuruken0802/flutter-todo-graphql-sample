import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/todo_list/todo_list_bloc.dart';
import 'package:frontend/bloc/todo_list/todo_list_event.dart';
import 'package:frontend/bloc/todo_list/todo_list_state.dart';
import 'package:frontend/helper/route_helper.dart';
import 'package:frontend/qraphql/todo/__generated__/todo.query.data.gql.dart';
import 'package:frontend/qraphql/todo/__generated__/todo.query.var.gql.dart';
import 'package:frontend/screen/todo_detail/todo_detail_page.dart';
import 'package:frontend/screen/todo_item_view.dart';
import 'package:get_it/get_it.dart';
// ignore: depend_on_referenced_packages
import 'package:built_collection/built_collection.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({
    Key? key,
  }) : super(key: key);
  final client = GetIt.I.get<Client>();
  final _bloc = TodoListBloc();

  _list(BuiltList<GGetTodosData_todos> todoData) {
    return RefreshIndicator(
      onRefresh: () async {
        _bloc.add(OnRefreshControl());
      },
      child: ListView.separated(
        itemCount: todoData.length,
        itemBuilder: (context, index) {
          final todo = todoData[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                RouteHelper.push(context, TodoDetailPage(todo: todo));
              },
              child: TodoItemView(
                title: todo.body,
                date: todo.createdAt.value,
              ),
            ),
          );
        },
        separatorBuilder: ((context, index) {
          return const Divider();
        }),
      ),
    );
  }

  _operation() {
    return Operation<GGetTodosData, GGetTodosVars>(
      client: client,
      operationRequest: _bloc.state.todoReq,
      builder: (
        BuildContext context,
        OperationResponse<GGetTodosData, GGetTodosVars>? response,
        Object? error,
      ) {
        if (response == null) {
          return Container();
        }
        final todoData = response.data?.todos;
        if (response.loading || todoData == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return _list(todoData);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoListBloc, TodoListState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: _operation(),
        );
      },
      bloc: _bloc,
    );
  }
}
