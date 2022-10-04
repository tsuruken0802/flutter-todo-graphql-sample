import 'package:equatable/equatable.dart';

abstract class TodoDetailEvent extends Equatable {
  const TodoDetailEvent();

  @override
  List<Object?> get props => [];
}

class OnFirstRequest extends TodoDetailEvent {}
