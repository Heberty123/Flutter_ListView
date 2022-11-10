import 'package:flutter/material.dart';


class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Preço',
              hintText: 'exemplo@exemplo.com',
              border: OutlineInputBorder(),
              errorText: 'erro de mensagem',
              prefixText: 'R\$ ',
              suffixText: 'cm',
              labelStyle: TextStyle(
                fontSize: 40,
              )
            ),

            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.purple,
            ),
            //obscureText: true,
          ),
        ),
      ),
    );
  }
}