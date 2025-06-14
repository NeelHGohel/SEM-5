import '../../utils/import_export.dart';

class UserListView extends StatefulWidget {
  const UserListView({super.key});

  @override
  State<UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  int count = 0;
  final UserController _controller = UserController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User-List")),
      body: FutureBuilder<List<UserModel>>(
        future: _controller.getAllUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {

              final users = snapshot.data!;
              debugPrint("${users.length} ");

              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ListTile(
                    title: Text(user.name),
                    subtitle: Text("${user.email} | ${user.phone}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            _controller.deleteUser(user.id);
                            setState(() {});
                          },
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                        ),
                        SizedBox(width: 3,),

                        IconButton(
                          onPressed: () {
                            _controller.editUser(user,user.id);
                            setState(() {});
                          },
                          icon: Icon(Icons.edit),
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  );
                },
              );
            }
           else {
            return Center(child: Text("No user found"));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller
              .insertUser(
                UserModel(
                  id: count,
                  name: "Test $count",
                  email: "test@test.com",
                  phone: "123456789",
                  city: "Rajkot",
                  gender: "Male",
                ),
              )
              .then((value) {
                setState(() {});
                count+=1;
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
