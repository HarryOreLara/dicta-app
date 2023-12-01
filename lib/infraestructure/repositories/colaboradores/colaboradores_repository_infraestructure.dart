import 'package:dicta_app/domain/datasource/colaboradores/colaboradores_datasource_domain.dart';
import 'package:dicta_app/domain/repositories/colaboradores/colaboradores_repository_domain.dart';
import 'package:dicta_app/infraestructure/models/cursos/curso_model.dart';

class ColaboradoresRepositoryInfraestrucuture
    extends ColaboradoresRepositoryDomain {
  final ColaboradoresDatasourceDomain colaboradoresDatasourceDomain;

  ColaboradoresRepositoryInfraestrucuture(this.colaboradoresDatasourceDomain);

  @override
  Future<List<CursoModel>> getAllCursoColaboradores() {
    return colaboradoresDatasourceDomain.getAllCursoColaboradores();
  }

  @override
  Future<CursoModel> getOneCursoColaboradores(String id) {
    return colaboradoresDatasourceDomain.getOneCursoColaboradores(id);
  }
}
