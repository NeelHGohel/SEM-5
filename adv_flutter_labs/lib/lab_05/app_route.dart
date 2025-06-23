import 'package:adv_flutter_labs/utils/import_export.dart';

class AppRoute {
  static List<GetPage> route = [
    GetPage(
      name: GETX_NAVIGATION_ADD_EDIT_PAGE,
      page: () {
        return GetxNavigationAddEditView();
      },
    ),
    GetPage(
      name: GETX_NAVIGATION_LIST_VIEW_PAGE,
      page: () => GetxNavigationListViewPage(),
    ),
  ];
}

class Route {}
