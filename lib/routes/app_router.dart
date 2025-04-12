import 'package:go_router/go_router.dart';
import 'package:ram_app/pages/home_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
