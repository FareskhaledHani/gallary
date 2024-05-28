import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../constant/constants.dart';
class CustomButtonLogin extends StatelessWidget {
  const CustomButtonLogin({super.key, required this.onPress});
  final void Function() onPress;
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 60.h,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: kButtonColor,
            shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.circular(12.0),

            )
        ),


        onPressed: onPress,
        child:  Text('Submit',
          style: Styles.textStyle18.copyWith(
              color: Colors.white
          ),
        ),

      ),
    );
  }
}

