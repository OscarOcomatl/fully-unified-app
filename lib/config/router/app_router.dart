
import 'package:fully_unified_app/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    //runta inicio: home
    GoRoute(
      path: '/home',
      name: HomeScreen.name,
      builder: ( context, state ){
        return const HomeScreen();
      }
    ),
    // ruta para las propinas
    GoRoute(
      path: '/baksheesh',
      name: BaksheeshScreen.name,
      builder: ( context, state ) {
        return const BaksheeshScreen();
      }
    ),
    // ruta para todo list
    GoRoute(
      path: '/todo',
      name: ToDoScreen.name,
      builder: (context, state) {
        return const ToDoScreen();
      },
    ),
    //Task description
    GoRoute(
      path: '/task-description',
      name: TaskDescriptionScreen.name,
      builder: ( context, state ){
        return TaskDescriptionScreen();
      }
    ),
    //ruta para hacer el search de unsplash
    GoRoute(
      path: '/search',
      name: UnsplashSearchScreen.name,
      builder: ( context, state ) {
        return const UnsplashSearchScreen();
      }
    )
  ]
);