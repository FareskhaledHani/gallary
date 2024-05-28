
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/utils/cash_helper.dart';
import 'core/utils/servies_locator.dart';
import 'core/utils/themes.dart';
import 'features/home/peresentation/views/home_view.dart';
import 'features/login/peresentation/login_view.dart';


void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await CacheHelper.init();
  runApp( const GalleryApp());
}

class GalleryApp extends StatelessWidget {

  const GalleryApp({super.key});
  @override
  Widget build(BuildContext context) {

    return  ScreenUtilInit(
        designSize: const Size(463, 926),
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme(context),
            //isFirstTime ? const LoginView() : const HomeView(),
            home: CacheHelper.getToken().isNotEmpty? const HomeView(): const LoginView(),
          );
        },
       );
  }




}