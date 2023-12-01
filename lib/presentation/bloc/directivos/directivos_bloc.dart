import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'directivos_event.dart';
part 'directivos_state.dart';

class DirectivosBloc extends Bloc<DirectivosEvent, DirectivosState> {
  DirectivosBloc() : super(DirectivosInitial()) {
    on<DirectivosEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
