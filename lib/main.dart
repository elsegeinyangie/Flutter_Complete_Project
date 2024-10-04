import 'package:flutter/material.dart';

import 'core/dependency_injection/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'doc_app.dart';

void main() {
  setUpGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
