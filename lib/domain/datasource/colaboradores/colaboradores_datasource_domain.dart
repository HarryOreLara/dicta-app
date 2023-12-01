import 'package:dicta_app/infraestructure/models/cursos/curso_model.dart';

abstract class ColaboradoresDatasourceDomain {
  Future<List<CursoModel>> getAllCursoColaboradores();
  Future<CursoModel> getOneCursoColaboradores(String id);
}
