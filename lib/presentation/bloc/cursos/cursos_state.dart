part of 'cursos_bloc.dart';

class CursosState extends Equatable {
  final bool loading;
  final String error;
  final CursoModel? cursoModel;
  const CursosState({this.loading = false, this.error = "", this.cursoModel});

  CursosState copyWith(
          {bool? loading, String? error, CursoModel? cursoModel}) =>
      CursosState(
          loading: loading ?? this.loading,
          error: error ?? this.error,
          cursoModel: cursoModel ?? this.cursoModel);

  @override
  List<Object> get props => [loading, error, cursoModel!];
}

final class CursosInitial extends CursosState {}
