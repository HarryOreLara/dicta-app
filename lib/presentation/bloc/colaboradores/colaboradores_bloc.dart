import 'package:bloc/bloc.dart';
import 'package:dicta_app/domain/datasource/colaboradores/colaboradores_datasource_domain.dart';
import 'package:dicta_app/infraestructure/datasources/colaboradores/colaboradores_datasource_infraestructure.dart';
import 'package:dicta_app/infraestructure/models/cursos/curso_model.dart';
import 'package:equatable/equatable.dart';

part 'colaboradores_event.dart';
part 'colaboradores_state.dart';

class ColaboradoresBloc extends Bloc<ColaboradoresEvent, ColaboradoresState> {
  late ColaboradoresDatasourceDomain _datasourceDomain;

  ColaboradoresBloc() : super(const ColaboradoresState()) {
    _datasourceDomain = ColaboradoresDatasourceInfraestructure();

    on<ColaboradoresInit>((event, emit) {
      emit(state.copyWith(loading: false, error: ''));
    });
    on<GetAllCursosColaboradores>((event, emit) async {
      try {
        emit(state.copyWith(loading: true));
        final cursosColaboradores =
            await _datasourceDomain.getAllCursoColaboradores();
        emit(state.copyWith(
            loading: false, listCursoColaboradores: cursosColaboradores));
      } catch (e) {
        try {
          emit(
              state.copyWith(loading: false, error: (e as dynamic)['message']));
        } catch (e) {
          emit(state.copyWith(
              loading: false, error: 'Ocurrio un error de segundo nivel'));
        }
      }
    });
  }
}
