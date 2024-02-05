import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:uploadimage/global/providers/providers_list.dart';
import 'package:uploadimage/global/routes/routes.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

//*---Screen_orientation
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    MultiProvider(
      providers: providerList,
  child:  const MyApp(),)
    
  );
}

GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return Platform.isIOS
            ? CupertinoApp(
                title: 'UploadImage',
                routes: routes,
                initialRoute: '/',
                navigatorKey: navigationKey,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: const [
                  DefaultMaterialLocalizations.delegate,
                  DefaultCupertinoLocalizations.delegate,
                  DefaultWidgetsLocalizations.delegate,
                ],
              )
            : MaterialApp(
                title: 'UploadImage',
                routes: routes,
                initialRoute: '/',
                navigatorKey: navigationKey,
                debugShowCheckedModeBanner: false,
              );
      },
      designSize: const Size(375, 812),
    );
  }
}
