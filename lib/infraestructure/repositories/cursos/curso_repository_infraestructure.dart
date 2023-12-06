import 'package:dicta_app/domain/datasource/cursos/curso_datasource_domain.dart';
import 'package:dicta_app/domain/repositories/repositories_domain.dart';
import 'package:dicta_app/infraestructure/models/cursos/curso_model.dart';

class CursoRepositoryInfraestructure extends CursoRepositoryDomain {
  final CursoDatasourceDomain cursoDatasourceDomain;

  CursoRepositoryInfraestructure(this.cursoDatasourceDomain);

  @override
  Future<List<CursoModel>> getAllCursos() {
    return cursoDatasourceDomain.getAllCursos();
  }

  @override
  Future<CursoModel> getOneCurso(String id) {
    return cursoDatasourceDomain.getOneCurso(id);
  }
}
