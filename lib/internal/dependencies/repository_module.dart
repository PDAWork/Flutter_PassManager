import 'package:passmanager_diplom/domain/repository/auth_data_repository.dart';
import 'package:passmanager_diplom/domain/repository/auth_repository.dart';
import 'package:passmanager_diplom/domain/repository/crud_data_repository.dart';
import 'package:passmanager_diplom/domain/repository/crud_reposittiry.dart';
import 'package:passmanager_diplom/internal/dependencies/api_module.dart';

class RepositoryModule {
  static AuthRepository? _authRepository;
  static CRUDRepository? _crudRepository;

  static AuthRepository authRepository() {
    _authRepository ??= AuthDataRepository(ApiModule.apiUtil());
    return _authRepository!;
  }

  static CRUDRepository crudRepository(){
    _crudRepository ??= CRUDDataRepository();
    return _crudRepository!;
  }
}
