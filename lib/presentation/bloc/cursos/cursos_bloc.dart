import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cursos_event.dart';
part 'cursos_state.dart';

class CursosBloc extends Bloc<CursosEvent, CursosState> {
  CursosBloc() : super(CursosInitial()) {
    on<CursosEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
