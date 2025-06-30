import 'package:adv_flutter_labs/lab_07/crud_getx_add_edit_page.dart';

import '../utils/import_export.dart';

class CrudGetxView extends StatelessWidget {
  const CrudGetxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CRUD GetX")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(CrudGetxAddEditPage());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
