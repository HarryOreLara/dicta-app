part of 'cursos_bloc.dart';

abstract class CursosEvent extends Equatable {
  const CursosEvent();

  @override
  List<Object> get props => [];
}

class GetOneCurso extends CursosEvent {
  final String nombre;

  const GetOneCurso({required this.nombre});
}

class CursosInit extends CursosEvent{}

class GetAllCursos extends CursosEvent{}