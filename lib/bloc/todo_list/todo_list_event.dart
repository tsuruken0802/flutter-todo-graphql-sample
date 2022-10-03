import 'package:equatable/equatable.dart';

abstract class TodoListEvent extends Equatable {
  const TodoListEvent();

  @override
  List<Object?> get props => [];
}

class OnFirstRequest extends TodoListEvent {}

class OnRefreshControl extends TodoListEvent {}
