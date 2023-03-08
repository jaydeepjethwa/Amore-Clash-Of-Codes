import 'package:coc/constant/theme.dart';
import 'package:coc/service/initialize_controller.dart';
import 'package:coc/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  InitializeController.init();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Star Mitra",
      theme: theme,
      debugShowCheckedModeBanner: false,
      initialRoute: "/register",
      getPages: routesList,
    );
  }
}
