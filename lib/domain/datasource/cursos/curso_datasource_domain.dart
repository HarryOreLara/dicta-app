import 'package:dicta_app/infraestructure/models/cursos/curso_model.dart';

abstract class CursoDatasourceDomain{
  Future<List<CursoModel>> getAllCursos();

  Future<CursoModel> getOneCurso(String id);

}