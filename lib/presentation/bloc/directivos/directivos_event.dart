part of 'directivos_bloc.dart';

sealed class DirectivosEvent extends Equatable {
  const DirectivosEvent();
  @override
  List<Object> get props => [];
}

class DirectivosInit extends DirectivosEvent{}

class GetAllCursosDirectivos extends DirectivosEvent {}

class GetOneCursoDirectivos extends DirectivosEvent {
  final String id;
  const GetOneCursoDirectivos({required this.id});
}
