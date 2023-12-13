import 'package:dicta_app/config/errors/exception.dart';
import 'package:dicta_app/domain/datasource/auth/auth_datasource_domain.dart';
import 'package:dicta_app/infraestructure/auth/auth_service.dart';
import 'package:dicta_app/infraestructure/models/usuarios/usuario_model.dart';
import 'package:dio/dio.dart';

class AuthDatasourceInfraestructure extends AuthDatasourceDomain {
  AuthService authService = AuthService();

  Dio dio(String token) {
    return Dio(BaseOptions(
        baseUrl: 'http://www.backdictacolombia.somee.com/api',
        headers: {'Content-Type': 'application/json', 'x-auth-token': token}));
  }

  @override
  Future<bool> login(UsuarioModel usuarioModel) async {
    try {
      final usuarioJson = usuarioModel.toMap();
      final response =
          await dio("token").post('/IniciarSesion', data: usuarioJson);
      if (response.statusCode != 200) {
        return false;
      }
      authService.saveEmail(usuarioModel.email!);
      return true;
    } on APIException {
      rethrow;
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
  }

  @override
  Future<bool> register(UsuarioModel usuarioModel) async {
    try {
      final usuarioJson = usuarioModel.toMap();
      final response = await dio("token").post('/Users', data: usuarioJson);
      if (response.statusCode != 200) {
        return false;
      }
      return true;
    } on APIException {
      rethrow;
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
  }
}
