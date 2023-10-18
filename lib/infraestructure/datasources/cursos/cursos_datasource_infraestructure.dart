import 'package:dicta_app/domain/datasource/datasource_domain.dart';
import 'package:dicta_app/domain/entitie/cursos/cursos.dart';

class CursoDatasourceInfraestructure extends CursoDatasourceDomain{
  @override
  Future<List<Curso>> getAllCursos() {
    // TODO: implement getAllCursos
    throw UnimplementedError();
  }

  @override
  Future<Curso> getOneCurso(String id) {
    // TODO: implement getOneCurso
    throw UnimplementedError();
  }

}