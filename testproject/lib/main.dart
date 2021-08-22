import 'package:flutter/material.dart';


class Todo{
  final String title;
  final String description;

  Todo(this.title, this.description);
}

void main() {
  runApp(
    MaterialApp(
      title: 'tastapp',
      home:MyApp()
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("this is my first app"),
       backgroundColor: Colors.red,
     ),
     body:FirstScreen(
       todos: List.generate(20, (i) => Todo('dipu $i', 'Assistant programmer')),
     )
   );
  }
}


class FirstScreen extends StatelessWidget{

  final List<Todo> todos;
  FirstScreen({Key?key,required this.todos }): super(key:key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView.builder(
       itemCount: todos.length,
         itemBuilder: (context,index){

         return ListTile(
           title: Text(todos[index].title,style: TextStyle(
             color: Colors.black,
             fontSize: 20,),
           ),
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(todo: todos[index]))
             );
           },

         );
         }

     )
   );
  }


}


class DetailScreen extends StatelessWidget{


const DetailScreen({Key?key,required this.todo}):super(key:key);

final Todo todo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(todo.description),
      ),
    );
  }


}