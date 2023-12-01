part of 'clientes_bloc.dart';

sealed class ClientesState extends Equatable {
  const ClientesState();
  
  @override
  List<Object> get props => [];
}

final class ClientesInitial extends ClientesState {}
