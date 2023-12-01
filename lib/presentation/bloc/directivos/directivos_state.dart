part of 'directivos_bloc.dart';

sealed class DirectivosState extends Equatable {
  const DirectivosState();
  
  @override
  List<Object> get props => [];
}

final class DirectivosInitial extends DirectivosState {}
