import 'package:go_router/go_router.dart';
import 'package:flutter_login/home_screen/homescreen.dart';
import 'package:flutter_login/home_screen/loginscreen.dart';
import 'package:flutter_login/entities/users.dart';


final routerApp = GoRouter(routes: [
  GoRoute(
    name: LoginScreen.name,
    path: '/',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    name: HomeScreen.name,
    path: '/home',
    builder: (context, state) => HomeScreen(usuarioIngresado: state.extra as User), // state.extra contiene el valor que yo le mande desde el login, en este caso el nombre de usuario. Es lo que recibe la homescreen desde el login
  ),
  //GoRoute(
    //name: AddPlayer.name,
    //path: '/addplayer',
    //builder: (context, state) => const AddPlayer(),
 // )
]);