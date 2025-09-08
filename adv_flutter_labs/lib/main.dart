import 'package:adv_flutter_labs/lab_11/lab_11_api_routes.dart';
import 'package:adv_flutter_labs/utils/import_export.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';
import 'lab_05/app_route.dart';
import 'lab_06/change_string_real_time.dart';
import 'lab_07/crud_getx_view.dart';
import 'lab_08/exception_snackbar.dart';
import 'lab_10/lab_10_student_view.dart';
import 'lab_11/lab_11_api_view.dart';
import 'lab_15/permission_view_page.dart';
import 'lab_16/file_read_write_view.dart';
import 'lab_17/screen_height_width.dart';
import 'lab_17/text_color_by_width.dart';
import 'lab_18/responsive_grid_layout.dart';
import 'lab_19/sign_in/sign_in_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // // This widget is the root of your application.
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Flutter Demo',
  //
  //     // home: DisplayUser(),
  //     // home: CardView(),
  //     // home: UrlTest(),
  //     // home: UserListView(),
  //     // home: CRUDView(),
  //
  //     // home: HomePage(),
  //   );
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: GetxView(),
      // home: ExceptionSnackbar(),
      // home: GetxCustomView(),
      // getPages: AppRoute.route,
      // initialRoute: GETX_NAVIGATION_LIST_VIEW_PAGE,
      // getPages: Lab11ApiRoutes.route,
      // initialRoute: LAB11APIVIEW,
      // home: PermissionViewPage(),
      home: ResponsiveGridLayout(),
    );
  }
}
