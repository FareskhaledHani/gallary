
import 'package:get_it/get_it.dart';
import 'package:my_galariy/core/utils/permissions_helper.dart';

import 'media_helper.dart';


final getIt = GetIt.instance;

setupServiceLocator() {
  // Permission service is used in FileUploaderService
  // so it must be located first
  getIt.registerSingleton<PermissionService>(PermissionHandlerPermissionService());

  getIt.registerSingleton<MediaServiceInterface>(MediaService());
}