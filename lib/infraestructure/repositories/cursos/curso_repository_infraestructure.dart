import 'package:dicta_app/domain/datasource/cursos/curso_datasource_domain.dart';
import 'package:dicta_app/domain/entitie/cursos/cursos.dart';
import 'package:dicta_app/domain/repositories/repositories_domain.dart';

class CursoRepositoryInfraestructure extends CursoRepositoryDomain {
  final CursoDatasourceDomain cursoDatasourceDomain;

  CursoRepositoryInfraestructure(this.cursoDatasourceDomain);

  @override
  Future<List<Curso>> getAllCursos() {
    return cursoDatasourceDomain.getAllCursos();
  }

  @override
  Future<Curso> getOneCurso(String id) {
    return cursoDatasourceDomain.getOneCurso(id);
  }
}
