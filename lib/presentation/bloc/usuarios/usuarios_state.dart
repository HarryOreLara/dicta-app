part of 'usuarios_bloc.dart';

sealed class UsuariosState extends Equatable {
  const UsuariosState();
  
  @override
  List<Object> get props => [];
}

final class UsuariosInitial extends UsuariosState {}
