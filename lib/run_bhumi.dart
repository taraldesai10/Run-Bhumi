import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:run_bhumi/moduals/splash/screen/splash_screen.dart';

class RunBhumi extends StatelessWidget {
  const RunBhumi({super.key});

  @override
  Widget build(BuildContext context) {
    return
      // ChangeNotifierProvider(
      //   create: (context) => FavoriteProvider(),
      //   child:
      ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          theme: ThemeData(
              fontFamily: "Poppins",
              textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 12))),

          home: SplashScreen(),

          debugShowCheckedModeBanner: false,
          // ),
        ),
      );
  }
}
