import 'package:bloc/bloc.dart';
import 'package:dicta_app/domain/datasource/directivos/directivos_datasource_domain.dart';
import 'package:dicta_app/infraestructure/datasources/directivos/directivos_datasource_infraestructure.dart';
import 'package:dicta_app/infraestructure/models/cursos/curso_model.dart';
import 'package:equatable/equatable.dart';

part 'directivos_event.dart';
part 'directivos_state.dart';

class DirectivosBloc extends Bloc<DirectivosEvent, DirectivosState> {
  late DirectivosDatasourceDomain _directivosDatasourceDomain;

  DirectivosBloc() : super(DirectivosInitial()) {
    _directivosDatasourceDomain = DirectivosDatasourceInfraestructure();

    on<DirectivosInit>((event, emit) {
      emit(state.copyWith(loading: false, error: ''));
    });
    on<GetAllCursosDirectivos>((event, emit) async {
      try {
        emit(state.copyWith(loading: true));
        final cursosDirectivos =
            await _directivosDatasourceDomain.getAllCursoDirectivos();
        emit(state.copyWith(
            loading: false, listCursoDirectivos: cursosDirectivos));
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
