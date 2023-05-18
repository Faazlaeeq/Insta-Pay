import 'package:flutter/material.dart';

class TodoHome extends StatefulWidget {
  const TodoHome({Key? key}) : super(key: key);

  @override
  State<TodoHome> createState() => _TodoHomeState();
}

class _TodoHomeState extends State<TodoHome> {
  List<String> tasks = [];
  TextEditingController textController = TextEditingController();

  addTask() {
    setState(() {
      tasks.add(textController.text);
      textController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(controller: textController),
                  ),
                  ElevatedButton(
                      onPressed: addTask(), child: const Text("Add Task"))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(1),
                    child: ListTile(
                      tileColor: Colors.blueGrey,
                      leading: Text(tasks[index]),
                      style: ListTileStyle.list,
                      trailing: ElevatedButton(
                          child: const Icon(Icons.delete),
                          onPressed: () {
                            setState(() {
                              tasks.removeAt(index);
                            });
                          }),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
