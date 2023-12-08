import 'package:dicta_app/infraestructure/models/models.dart';

abstract class AuthRepositoryDomain {
  Future<bool> login(UsuarioModel usuarioModel);
  Future<bool> register(UsuarioModel usuarioModel);
}
