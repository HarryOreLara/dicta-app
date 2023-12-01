part of 'colaboradores_bloc.dart';

abstract class ColaboradoresEvent extends Equatable {
  const ColaboradoresEvent();

  @override
  List<Object> get props => [];
}

class ColaboradoresInit extends ColaboradoresEvent{}

class GetAllCursosColaboradores extends ColaboradoresEvent {}

class GetOneCursoColaboradores extends ColaboradoresEvent {
  final String id;

  const GetOneCursoColaboradores({required this.id});
}
