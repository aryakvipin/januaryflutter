import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("taskbox");

  runApp(MaterialApp(
    home: MyTODo(),
  ));
}

class MyTODo extends StatefulWidget {
  @override
  State<MyTODo> createState() => _MyTODoState();
}

class _MyTODoState extends State<MyTODo> {
  List<Map<String,dynamic>> task=[];
  ///to store task from hive db
   final tbox=Hive.box("taskbox");

  /// read all the data


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo"),
      ),
      body: ListView.builder(

          itemBuilder: (context, index) {
            return Card(
              color: Colors.pink,
              margin: const EdgeInsets.all(10),
              elevation: 3,
              child: ListTile(
                title: Text("task[index]['name']"),
                subtitle: Text("er"),
                trailing: Wrap(
                  children: [
                    IconButton(
                        onPressed: () {

                        },
                        icon: const Icon(Icons.edit_calendar)),
                    IconButton(
                        onPressed: () {

                        }, icon: const Icon(Icons.delete))
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(context, null),
        child: const Icon(Icons.add),
      ),
    );
  }

  final  name_controller = TextEditingController();
  final  details_controller = TextEditingController();

  void showForm(BuildContext context, int? id) async {

    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        elevation: 5,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 120,
              top: 15,
              left: 15,
              right: 15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  controller: name_controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Task Name"),
                ),
                TextField(
                  controller: details_controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Task Details"),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () async {


                      name_controller.text = "";
                      details_controller.text = "";
                      Navigator.of(context).pop();
                    },
                    child: Text(id == null ? "Create Task" : "Update Task"))
              ],
            ),
          );
        });
  }


}
