import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_galariy/features/home/peresentation/views/widgets/home_view_body.dart';

import '../../../../core/utils/api_services.dart';
import '../get_images_cubit/get_images_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return GetImagesCubit(ApiServices(Dio()));
      },
      child: const Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}