import 'package:adv_flutter_labs/utils/import_export.dart';
import 'package:get/get.dart';

import 'lab_05/app_route.dart';
import 'lab_06/change_string_real_time.dart';

void main() {
  Get.put(GetxNavigationController());
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
      // home: GetxCustomView(),
      // getPages: AppRoute.route,
      // initialRoute: GETX_NAVIGATION_LIST_VIEW_PAGE,
      home: ChangeStringRealTime(),
    );
  }
}
