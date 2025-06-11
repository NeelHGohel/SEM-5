import '../../utils/import_export.dart';

class AddPage extends StatefulWidget {
  final dynamic user;
  const AddPage({super.key, this.user});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  late TextEditingController nameController;
  late TextEditingController rollController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(
      text: widget.user != null ? widget.user[NAME] : '',
    );
    rollController = TextEditingController(
      text: widget.user != null ? widget.user[ROLL] : '',
    );
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.user != null;

    return Scaffold(
      appBar: AppBar(title: Text(isEdit ? "Edit User" : "Add User")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: rollController,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(
                labelText: 'Roll Number',
                hintText: 'Enter your Roll Number',
                prefixIcon: Icon(Icons.numbers),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (widget.user != null) {
                  int index = DisplayUser.controller.getUserList().indexOf(
                    widget.user,
                  );
                  widget.user[NAME] = nameController.text.toString();
                  widget.user[ROLL] = rollController.text.toString();
                  widget.user[IS_FAV] = widget.user[IS_FAV] ?? false;
                  DisplayUser.controller.editUserList(index, widget.user);
                } else {
                  Map<dynamic, dynamic> newuser = {};
                  newuser[NAME] = nameController.text.toString();
                  newuser[ROLL] = rollController.text.toString();
                  newuser[IS_FAV] = false;
                  DisplayUser.controller.addUserList(newuser);
                }
                Navigator.pop(context);
              },
              child: Text(isEdit ? "Update" : "Add"),
            ),
          ],
        ),
      ),
    );
  }
}
