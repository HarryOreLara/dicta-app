import 'package:dicta_app/config/constants/cursos_colaboradores.dart';
import 'package:dicta_app/config/errors/exception.dart';
import 'package:dicta_app/domain/datasource/colaboradores/colaboradores_datasource_domain.dart';
import 'package:dicta_app/infraestructure/auth/auth_service.dart';
import 'package:dicta_app/infraestructure/models/cursos/curso_model.dart';
import 'package:dio/dio.dart';

class ColaboradoresDatasourceInfraestructure
    extends ColaboradoresDatasourceDomain {
  AuthService authService = AuthService();
  Dio dio(String token) {
    return Dio(BaseOptions(
        baseUrl: '',
        headers: {'Content-Type': 'application/json', 'x-auth-token': token}));
  }

  @override
  Future<List<CursoModel>> getAllCursoColaboradores()async {
    try {
      const List<CursoModel> listColaboradoresCursos = cursosColaboradores;
      return listColaboradoresCursos;
    } on APIException {
      rethrow;
    } catch (e) {
      throw APIException(message: e.toString(), statusCode: 505);
    }
  }

  @override
  Future<CursoModel> getOneCursoColaboradores(String id) {
    // TODO: implement getOneCursoColaboradores
    throw UnimplementedError();
  }
}
