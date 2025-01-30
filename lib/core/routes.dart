import 'package:flutter_app/screens/profile_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/add_screen.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/search_screen.dart';

// Router yapılandırması
final router = GoRouter(
  initialLocation: '/', // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/add',
      builder: (context, state) => const AddScreen(),
    ),
  ],
);
