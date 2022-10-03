import 'package:flutter/material.dart';
import 'package:frontend/screen/todo_list/todo_list_page.dart';
import 'package:frontend/service/graphql_client_service.dart';
import 'package:get_it/get_it.dart';

void main() async {
  GetIt.I.registerSingleton(await GraphQLClientService.get());
  await GetIt.I.allReady();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoListPage(),
    );
  }
}
