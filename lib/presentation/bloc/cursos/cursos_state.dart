part of 'cursos_bloc.dart';

class CursosState extends Equatable {
  final bool loading;
  final String error;
  final CursoModel? cursoModel;
  final List<CursoModel> listaCursos;

  const CursosState({
    this.loading = false,
    this.error = "",
    this.cursoModel,
    this.listaCursos = const [],
  });

  CursosState copyWith(
          {bool? loading,
          String? error,
          CursoModel? cursoModel,
          List<CursoModel>? listaCursos}) =>
      CursosState(
          loading: loading ?? this.loading,
          error: error ?? this.error,
          cursoModel: cursoModel ?? this.cursoModel,
          listaCursos: listaCursos ?? this.listaCursos);

  @override
  List<Object> get props => [loading, error, cursoModel ?? "", listaCursos];
}

final class CursosInitial extends CursosState {}
