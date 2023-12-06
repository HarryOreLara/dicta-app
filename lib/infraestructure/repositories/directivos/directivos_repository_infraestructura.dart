import 'package:dicta_app/domain/datasource/directivos/directivos_datasource_domain.dart';
import 'package:dicta_app/domain/repositories/directivos/directivos_repository_domain.dart';
import 'package:dicta_app/infraestructure/models/cursos/curso_model.dart';

class DirectivosRepositoryInfraestructure extends DirectivosRepositoryDomain{

  final DirectivosDatasourceDomain datasourceDomain;

  DirectivosRepositoryInfraestructure( this.datasourceDomain);

  @override
  Future<List<CursoModel>> getAllCursoDirectivos() {
    return datasourceDomain.getAllCursoDirectivos();
  }

  @override
  Future<CursoModel> getOneCursoDirectivos(String id) {
    return datasourceDomain.getOneCursoDirectivos(id);
  }

}