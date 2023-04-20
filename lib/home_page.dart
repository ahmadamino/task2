import 'package:flutter/material.dart';
import 'package:task2/todo.dart';

class HomePage extends StatefulWidget {

final todoList =ToDo.todoList();
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('add');
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.search),
                hintText: 'Search',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'All To Dos',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: ListView.builder(
              shrinkWrap: true, itemBuilder: (context, i)=> CheckList(),
              itemCount: 5,

            ),
          ),
        ],
      ),
    );
  }
}

class CheckList extends StatefulWidget {
  const CheckList({Key? key}) : super(key: key);

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {


  bool usa = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(
         'dfs sdfsdsw ewtys',
          style: TextStyle(decoration: TextDecoration.lineThrough),
        ),
        leading: Checkbox(
          value: usa,
          onChanged: (val) {
            setState(() {
              usa = val!;
            });
          },
        ),
        trailing: IconButton(
          icon: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(3)),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              )),
          onPressed: () {},
        ),
      ),
    );
  }
}
