import 'package:coc/presentation/view/authentication/login_screen.dart';
import 'package:coc/presentation/view/authentication/otp_screen.dart';
import 'package:coc/presentation/view/bottom_navigation/bottom_navigation_scrren.dart';
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
    name: "/bottomNavBar",
    page: () => const BottomNavigationScreen(),
    transitionDuration: const Duration(milliseconds: 500),
    transition: Transition.rightToLeftWithFade,
  ),
];
