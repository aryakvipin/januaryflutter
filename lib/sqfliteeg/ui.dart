import 'package:flutter/material.dart';
import 'package:januaryflutter/sqfliteeg/sqlhelper.dart';

void main() {
  runApp(MaterialApp(
    home: MainSQL(),
  ));
}

class MainSQL extends StatefulWidget {

  @override
  State<MainSQL> createState() => _MainSQLState();
}

class _MainSQLState extends State<MainSQL> {
  // bool isLoading = true;
  // List<Map<String, dynamic>> note_from_db = []; //to store data from sqflite
  //
  // @override
  // void initState() {
  //   // refreshing the ui
  //   refreshData();
  //   super.initState();
  // }
  //
  // void refreshData() async {
  //   final datas = await SQLHelper.readNotes(); // read data from sqflite
  //   setState(() {
  //     note_from_db = datas; // add the datas read from sqflite into empty list
  //     isLoading = false;
  //   });
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyNotes"),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          :
      ListView.builder(



          itemBuilder: (context, index) {
            return Card(
              child: ListTile(

                title: Text("fvgf"),
                subtitle: Text("cvdf"),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete)),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>showForm(null),
        child: const Icon(Icons.add),
      ),
    );
  }

  // final title = TextEditingController();
  // final note = TextEditingController();

  void showForm(int? id) async {
    // if (id != null) {
    //   final existingNote = note_from_db.firstWhere((note) => note['id'] == id);
    //   title.text = existingNote['title'];
    //   note.text = existingNote['note'];
    // }

    showModalBottomSheet(
        context: context,

        isScrollControlled: true,
        builder: (context) => Container(
          padding: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom + 120),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(

                decoration: const InputDecoration(
                    hintText: "Title", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(

                decoration: const InputDecoration(
                    hintText: "Enter note", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: ()  {},



                child: Text(id == null ? 'ADD NOTE' : "UPDATE"),
              )
            ],
          ),
        ));
  }

  Future addNote() async {
    await SQLHelper.createNote(title.text, note.text);
    refreshData();
  }

  Future<void> updateNote(int id) async {
    await SQLHelper.updateNote(id, title.text, note.text);
    refreshData();
  }



  void deleteNote(int id) async {
    await SQLHelper.deletenote(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Note Deleted")));
    refreshData();
  }
}
