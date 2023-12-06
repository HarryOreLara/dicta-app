import 'package:bloc/bloc.dart';
import 'package:dicta_app/domain/datasource/cursos/curso_datasource_domain.dart';
import 'package:dicta_app/infraestructure/datasources/cursos/cursos_datasource_infraestructure.dart';
import 'package:dicta_app/infraestructure/models/cursos/curso_model.dart';
import 'package:equatable/equatable.dart';

part 'cursos_event.dart';
part 'cursos_state.dart';

class CursosBloc extends Bloc<CursosEvent, CursosState> {
  late CursoDatasourceDomain _cursoDatasourceDomain;

  CursosBloc() : super(const CursosState()) {
    _cursoDatasourceDomain = CursoDatasourceInfraestructure();

    on<CursosInit>((event, emit) {
      emit(state.copyWith(loading: false, error: ''));
    });

    on<GetOneCurso>((event, emit) async {
      try {
        emit(state.copyWith(loading: true));
        final curso = await _cursoDatasourceDomain.getOneCurso(event.nombre);
        emit(state.copyWith(loading: false, cursoModel: curso));
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

    on<GetAllCursos>((event, emit) async {
      try {
        emit(state.copyWith(loading: true));
        final List<CursoModel> listaCursos =
            await _cursoDatasourceDomain.getAllCursos();
        emit(state.copyWith(loading: false, listaCursos: listaCursos));
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
