import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'usuarios_event.dart';
part 'usuarios_state.dart';

class UsuariosBloc extends Bloc<UsuariosEvent, UsuariosState> {
  UsuariosBloc() : super(UsuariosInitial()) {
    on<UsuariosEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
