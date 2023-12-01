import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'clientes_event.dart';
part 'clientes_state.dart';

class ClientesBloc extends Bloc<ClientesEvent, ClientesState> {
  ClientesBloc() : super(ClientesInitial()) {
    on<ClientesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
