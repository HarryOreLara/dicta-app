part of 'directivos_bloc.dart';

class DirectivosState extends Equatable {
  final bool loading;
  final String error;
  final List<CursoModel> listCursoDirectivos;



  const DirectivosState(
      {this.loading = false,
      this.error = "",
      this.listCursoDirectivos = const []});
  


  DirectivosState copyWith(
          {bool? loading,
          String? error,
          List<CursoModel>? listCursoDirectivos}) =>
      DirectivosState(
          loading: loading ?? this.loading,
          error: error ?? this.error,
          listCursoDirectivos:
              listCursoDirectivos ?? this.listCursoDirectivos);



  @override
  List<Object> get props => [loading, error, listCursoDirectivos];
}

final class DirectivosInitial extends DirectivosState {}
