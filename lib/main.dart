import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jwero_sales_app/constants/strings.dart';
import 'package:jwero_sales_app/views/pages/capture_lead_form.dart';
import 'package:jwero_sales_app/views/pages/home_screen.dart';
import 'package:jwero_sales_app/views/pages/login_page.dart';
import 'package:get/get.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();

  //SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        getPages: [
          GetPage(
            name: '/',
            page: () => LoginPage(),
          ),
          GetPage(
            name: '/homeScreen',
            page: () => HomeScreen(),
          ),
          GetPage(
            name: '/captureLeadForm',
            page: () => CaptureLeadForm(),
          )
        ],
        theme: ThemeData(
            primaryColor: Color.fromARGB(255, 221, 221, 221),
            fontFamily: 'Inter'),
        debugShowCheckedModeBanner: false,
        title: Strings.appName,
        home: LoginPage(),
      ),
    );
  }
}
