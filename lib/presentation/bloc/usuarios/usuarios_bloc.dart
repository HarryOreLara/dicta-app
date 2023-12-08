import 'package:bloc/bloc.dart';
import 'package:dicta_app/domain/datasource/auth/auth_datasource_domain.dart';
import 'package:dicta_app/infraestructure/datasources/auth/auth_datasource_infraestructure.dart';
import 'package:dicta_app/infraestructure/models/models.dart';
import 'package:equatable/equatable.dart';

part 'usuarios_event.dart';
part 'usuarios_state.dart';

class UsuariosBloc extends Bloc<UsuariosEvent, UsuariosState> {
  late AuthDatasourceDomain _authDatasourceDomain;

  UsuariosBloc() : super(const UsuariosState()) {
    _authDatasourceDomain = AuthDatasourceInfraestructure();
    on<LoginUsuario>((event, emit)async {
      try {
        emit(state.copyWith(loading: true));
        final login = await _authDatasourceDomain.login(event.usuarioModel);
        emit(state.copyWith(
            loading: false, succesfully: login));
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

    on<RegistroUsuario>((event, emit)async {
      try {
        emit(state.copyWith(loading: true));
        final registro = await _authDatasourceDomain.register(event.usuarioModel);
        emit(state.copyWith(
            loading: false, succesfully: registro));
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
