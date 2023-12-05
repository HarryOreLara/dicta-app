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
        baseUrl: 'https://back-express-6tca.onrender.com',
        headers: {'Content-Type': 'application/json', 'x-auth-token': token}));
  }

  @override
  Future<List<CursoModel>> getAllCursoColaboradores() async {
    try {
      final response = await dio("token").get('/curso/colaboradores');

      if (response.statusCode != 200) {
        throw APIException(
            message: response.statusMessage, statusCode: response.statusCode);
      }

      
      List<CursoModel> listitaCurso =
          (response.data as List).map((e) => CursoModel.frommap(e)).toList();

      return listitaCurso;
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
