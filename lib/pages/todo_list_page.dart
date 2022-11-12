import 'package:flutter/material.dart';
import '../models/todo.dart';
import '../widgets/todo_list_item.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {

  final TextEditingController todoController = TextEditingController();

  List<Todo> todos = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: todoController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Adicione uma tarefa',
                          hintText: 'Ex. Estudar Flutter',
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    ElevatedButton(
                      onPressed: (){
                        String text = todoController.text;
                        setState(() {
                          Todo newTodo = new
                          todos.add(text.);
                          todoController.clear();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff00d7f3),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      for(String todo in todos)
                        TodoListItem(
                          title: todo,
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Você possui ${todos.length} tarefas pendentes',
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff00d7f3),
                      ),
                        child: Text('Limpar tudo'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
