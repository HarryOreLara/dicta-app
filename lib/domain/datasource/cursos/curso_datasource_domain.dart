import 'package:dicta_app/domain/entitie/cursos/cursos.dart';

abstract class CursoDatasourceDomain{
  Future<List<Curso>> getAllCursos();

  Future<Curso> getOneCurso(String id);

}