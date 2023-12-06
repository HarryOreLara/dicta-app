import 'package:dicta_app/presentation/screens/screens.dart';
import 'package:dicta_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
    initialLocation: '/',
    navigatorKey: GlobalKey<NavigatorState>(),
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainNavigator(),
      ),
      GoRoute(
        path: '/categorias',
        builder: (context, state) => const ColaboradoresScreen(),
      ),
      GoRoute(
        path: '/servicios',
        builder: (context, state) => const DirectivosScreen(),
      ),
      GoRoute(
        path: '/cursos',
        builder: (context, state) => const CursosScreen(),
      ),
      GoRoute(
        path: '/oneCurso/:id/:nombre',
        builder: (context, state) {
          final id = state.pathParameters["id"] ?? '';
          final nombre = state.pathParameters["nombre"] ?? '';
          return OneCursoScreen(id: id, nombre: nombre);
        },
      ),
      GoRoute(
        path: '/perfil',
        builder: (context, state) => const PerfilScreen(),
      ),
      GoRoute(
        path: '/configuracion',
        builder: (context, state) => const ConfiguracionScreen(),
      ),
      GoRoute(
        path: '/historial',
        builder: (context, state) => const HistorialScreen(),
      ),
    ]);
