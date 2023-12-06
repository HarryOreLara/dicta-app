import 'package:dicta_app/infraestructure/models/cursos/curso_model.dart';

abstract class CursoRepositoryDomain{
  Future<List<CursoModel>> getAllCursos();

  Future<CursoModel> getOneCurso(String id);

}