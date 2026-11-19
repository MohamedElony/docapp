import 'package:docapp/core/routing/app_router.dart';
import 'package:docapp/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
   WidgetsBinding widget = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(DocApp(appRouter: AppRouter(),));
  FlutterNativeSplash.remove();
}
