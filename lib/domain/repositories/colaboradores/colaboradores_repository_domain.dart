import 'package:dicta_app/infraestructure/models/cursos/curso_model.dart';

abstract class ColaboradoresRepositoryDomain {
  Future<List<CursoModel>> getAllCursoColaboradores();
  Future<CursoModel> getOneCursoColaboradores(String id);
}
