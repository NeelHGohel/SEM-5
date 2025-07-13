import 'package:adv_flutter_labs/lab_11/lab_11_api_add_edit_page.dart';
import 'package:adv_flutter_labs/lab_11/lab_11_api_view.dart';

import '../utils/import_export.dart';

const String LAB11APIADDEDITPAGE = "/lab11apiaddeditpage";
const String LAB11APIVIEW = "/lab11apiview";

class Lab11ApiRoutes {
  static List<GetPage> route = [
    GetPage(
      name: LAB11APIADDEDITPAGE,
      page: () {
        return Lab11ApiAddEditPage();
      },
    ),
    GetPage(
      name: LAB11APIVIEW,
      page: () {
        return Lab11ApiView();
      },
    ),
  ];
}
