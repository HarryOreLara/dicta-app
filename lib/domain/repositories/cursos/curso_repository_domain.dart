import 'package:dicta_app/domain/entitie/cursos/cursos.dart';

abstract class CursoRepositoryDomain{
  Future<List<Curso>> getAllCursos();

  Future<Curso> getOneCurso(String id);

}