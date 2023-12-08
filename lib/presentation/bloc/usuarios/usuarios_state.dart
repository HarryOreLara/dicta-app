part of 'usuarios_bloc.dart';

class UsuariosState extends Equatable {
  final bool loading;
  final String error;
  final bool succesfully;
  const UsuariosState({this.loading = false, this.succesfully = false, this.error = ""});

  UsuariosState copyWith({bool? loading, bool? succesfully, String? error}) => UsuariosState(
      loading: loading ?? this.loading,
      succesfully: succesfully ?? this.succesfully, error: error ?? this.error);

  @override
  List<Object> get props => [loading, succesfully, error];
}

final class UsuariosInitial extends UsuariosState {}
