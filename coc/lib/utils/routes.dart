import 'package:coc/presentation/view/authentication/login_screen.dart';
import 'package:coc/presentation/view/authentication/otp_screen.dart';
import 'package:coc/presentation/view/authentication/register_screen.dart';
import 'package:coc/presentation/view/bottom_navigation/bottom_navigation_scrren.dart';
import 'package:coc/presentation/view/chat/chat_screen.dart';
import 'package:get/get.dart';

List<GetPage> routesList = [
  GetPage(
    name: "/login",
    page: () => const LoginScreen(),
    transitionDuration: const Duration(milliseconds: 500),
    transition: Transition.rightToLeftWithFade,
  ),
  GetPage(
    name: "/otp",
    page: () => const OTPScreen(),
    transitionDuration: const Duration(milliseconds: 500),
    transition: Transition.rightToLeftWithFade,
  ),
  GetPage(
    name: "/register",
    page: () => const RegisterScreen(),
    transitionDuration: const Duration(milliseconds: 500),
    transition: Transition.rightToLeftWithFade,
  ),
  GetPage(
    name: "/bottomNavBar",
    page: () => const BottomNavigationScreen(),
    transitionDuration: const Duration(milliseconds: 500),
    transition: Transition.rightToLeftWithFade,
  ),
  GetPage(
    name: "/chat",
    page: () => const ChatScreen(),
    transitionDuration: const Duration(milliseconds: 500),
    transition: Transition.rightToLeftWithFade,
  ),
];
