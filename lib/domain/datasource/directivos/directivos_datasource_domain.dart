import 'package:dicta_app/infraestructure/models/cursos/curso_model.dart';

abstract class DirectivosDatasourceDomain {
  Future<List<CursoModel>> getAllCursoDirectivos();
  Future<CursoModel> getOneCursoDirectivos(String id);
}
