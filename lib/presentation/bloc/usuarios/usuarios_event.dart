part of 'usuarios_bloc.dart';

abstract class UsuariosEvent extends Equatable {
  const UsuariosEvent();

  @override
  List<Object> get props => [];
}

class LoginUsuario extends UsuariosEvent {
  final UsuarioModel usuarioModel;

  const LoginUsuario({required this.usuarioModel});
}

class RegistroUsuario extends UsuariosEvent {
  final UsuarioModel usuarioModel;

  const RegistroUsuario({required this.usuarioModel});
}
