import 'package:flutter/material.dart';
import 'package:task1/core/app_routes/routes.dart';
import 'package:task1/core/services/api_provider/api_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ApiProvider.init();



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: Routes.routes,
    );
  }
}