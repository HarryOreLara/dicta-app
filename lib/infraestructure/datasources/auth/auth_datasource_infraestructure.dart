import 'package:dicta_app/config/errors/exception.dart';
import 'package:dicta_app/domain/datasource/auth/auth_datasource_domain.dart';
import 'package:dicta_app/infraestructure/models/usuarios/usuario_model.dart';
import 'package:dio/dio.dart';

class AuthDatasourceInfraestructure extends AuthDatasourceDomain {
  Dio dio(String token) {
    return Dio(BaseOptions(
        baseUrl: 'https://back-express-6tca.onrender.com',
        headers: {'Content-Type': 'application/json', 'x-auth-token': token}));
  }

  @override
  Future<bool> login(UsuarioModel usuarioModel)async {
    try {} on APIException {
      rethrow;
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<bool> register(UsuarioModel usuarioModel)async {
    try {} on APIException {
      rethrow;
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
    // TODO: implement register
    throw UnimplementedError();
  }
}
