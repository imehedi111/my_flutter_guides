import 'package:flutter/material.dart';

class Class3TodoApp extends StatefulWidget {
  const Class3TodoApp({super.key});

  @override
  State<Class3TodoApp> createState() => _Class3TodoAppState();
}

class _Class3TodoAppState extends State<Class3TodoApp> {
  //this is textField Controller.........
  TextEditingController taskInputController = TextEditingController();
  //this is List item variable..........
  List<String> tasks = [];
  //AddTask Functions bellow..............
  addTask() {
    final task = taskInputController.text.trim();
    if (task.isNotEmpty) {
      setState(() {
        tasks.add(task);
        taskInputController.clear();
      });
    } else {
      taskSnackBar();
    }
  }

  //here SnacBar showing for input field can't be empty...............
  taskSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('You can not submit empty or only space in task box.'),
      ),
    );
  }

  //Delete button function is here bellow.......................
  deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
      Navigator.pop(context);
    });
  }

  //Edit task function here.................................
  editTasks(int index) {
    final controller = TextEditingController(text: tasks[index]);
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              width: 3,
              color: Colors.deepOrangeAccent,
            )
        ),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Edit This Task',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.deepOrangeAccent,
            ),
          ),
        ),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Enter Task Name',
            hintStyle: TextStyle(color: Colors.grey.shade400),
            labelText: 'Update Task Box',
            labelStyle: TextStyle(color: Colors.green, fontSize: 18),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepOrangeAccent,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepOrangeAccent,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            prefixIcon: Icon(Icons.task_sharp, color: Colors.deepOrangeAccent),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.only(
                top: 12,
                bottom: 12,
                left: 30,
                right: 30,
              ),
            ),
            onPressed: () {
              final updateTask = controller.text.trim();
              if (updateTask.isNotEmpty) {
                setState(() {
                  tasks[index] = updateTask;
                  controller.clear();
                  Navigator.pop(context);
                });
              } else {
                taskSnackBar();
              }
            },
            child: Text('Update'),
          ),
        ],
      ),
    );
  }
  //On Delete e alert Dialog function here.......................
  onDeleteAlert(int index){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        actionsAlignment: MainAxisAlignment.center,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              width: 3,
              color: Colors.deepOrangeAccent,
            )
        ),
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'You want to Delete This Task?',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
          ),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 20,
                right: 20,
              ),
            ),
            //delete action here called.......................///
            onPressed: ()=>deleteTask(index),
            child: Text('Yes'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 20,
                right: 20,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('No'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My ToDo App',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Container(
            width: 200,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                'My Tasks List',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  //Text Input field to add task in the list...............
                  child: TextField(
                    controller: taskInputController,
                    decoration: InputDecoration(
                      hintText: 'Enter Task Name',
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      labelText: 'Task Box',
                      labelStyle: TextStyle(color: Colors.green, fontSize: 18),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepOrangeAccent,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepOrangeAccent,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      prefixIcon: Icon(
                        Icons.task_sharp,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                //Button for add task in the list.......................
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                      left: 30,
                      right: 30,
                    ),
                  ),
                  onPressed: addTask,
                  child: Text(
                    'Add',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsetsGeometry.only(
                    top: 5,
                    bottom: 5,
                    right: 15,
                    left: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(width: 1.5, color: Colors.green.shade200),
                  ),
                  color: Colors.greenAccent.shade100,
                  elevation: 3.5,
                  child: ListTile(
                    title: Text(tasks[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          //edit function applied here...................
                          onPressed: () => editTasks(index),
                          icon: Icon(Icons.edit_note_sharp, color: Colors.blue),
                        ),
                        IconButton(
                          //delete function applied here....................
                          onPressed: () => onDeleteAlert(index),
                          icon: Icon(Icons.delete, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
