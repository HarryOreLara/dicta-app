import 'package:dicta_app/presentation/bloc/clientes/clientes_bloc.dart';
import 'package:dicta_app/presentation/bloc/colaboradores/colaboradores_bloc.dart';
import 'package:dicta_app/presentation/bloc/directivos/directivos_bloc.dart';
import 'package:dicta_app/presentation/bloc/usuarios/usuarios_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDependencies {
  static List<BlocProvider> blocProviders = [
    BlocProvider<ClientesBloc>(create: (context) => ClientesBloc(),),
    BlocProvider<ColaboradoresBloc>(create: (context) => ColaboradoresBloc(),),
    BlocProvider<DirectivosBloc>(create: (context) => DirectivosBloc(),),
    BlocProvider<UsuariosBloc>(create: (context) => UsuariosBloc(),),
  ];
}
