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
        builder: (context, state) => const CategoriasScreen(),
      ),
      GoRoute(
        path: '/servicios',
        builder: (context, state) => const ServiciosScreen(),
      ),
      GoRoute(
        path: '/cursos',
        builder: (context, state) => const CursosScreen(),
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
