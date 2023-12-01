part of 'colaboradores_bloc.dart';

class ColaboradoresState extends Equatable {
  final bool loading;
  final String error;
  final List<CursoModel> listCursoColaboradores;

  const ColaboradoresState(
      {this.loading = false,
      this.error = "",

      this.listCursoColaboradores = const []});

  ColaboradoresState copyWith(
          {bool? loading,
          String? error,
          List<CursoModel>? listCursoColaboradores}) =>
      ColaboradoresState(
          loading: loading ?? this.loading,
          error: error ?? this.error,
          listCursoColaboradores:
              listCursoColaboradores ?? this.listCursoColaboradores);

  @override
  List<Object> get props => [loading, error, listCursoColaboradores];
}

final class ColaboradoresInitial extends ColaboradoresState {}
