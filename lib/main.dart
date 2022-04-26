import 'package:flutter/material.dart';
import 'package:passmanager_diplom/internal/application.dart';
import 'package:passmanager_diplom/internal/dependencies/repository_module.dart';
import 'package:passmanager_diplom/internal/dependencies/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var user = await RepositoryModule.crudRepository().read();
  runApp(Application(router: AppRouter(userAuth: user), isAuth: user.id == 0));
}
