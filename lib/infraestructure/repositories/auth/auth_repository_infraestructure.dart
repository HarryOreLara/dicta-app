import 'package:dicta_app/domain/datasource/auth/auth_datasource_domain.dart';
import 'package:dicta_app/domain/repositories/auth/auth_repository_domain.dart';
import 'package:dicta_app/infraestructure/models/usuarios/usuario_model.dart';

class AuthRepositoryInfraestructure extends AuthRepositoryDomain {
  final AuthDatasourceDomain datasourceDomain;

  AuthRepositoryInfraestructure(this.datasourceDomain);

  @override
  Future<bool> login(UsuarioModel usuarioModel) {
    return datasourceDomain.login(usuarioModel);
  }

  @override
  Future<bool> register(UsuarioModel usuarioModel) {
    return datasourceDomain.register(usuarioModel);
  }
}
