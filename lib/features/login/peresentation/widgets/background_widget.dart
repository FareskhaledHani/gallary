import 'package:flutter/material.dart';


import '../../../../core/utils/assets.dart';
class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          image:DecorationImage( image:
          AssetImage(
              AssetsData.background
          ),
              fit:BoxFit.fill
          )
      ),
    );
  }
}