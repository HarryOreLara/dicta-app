part of 'cursos_bloc.dart';

sealed class CursosState extends Equatable {
  const CursosState();
  
  @override
  List<Object> get props => [];
}

final class CursosInitial extends CursosState {}
