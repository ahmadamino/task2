class ToDo {
  String ? id;
  String? todoText;
  bool isDone;
  ToDo ({required this.id,required this.todoText, this.isDone=false});

  static List<ToDo> todoList() {

    return [
      ToDo(id: '01', todoText: 'saddsf sdfhkj jhsfdj',isDone:  true),
      ToDo(id: '02', todoText: 'saddsf sdfhkj jhsfdj',isDone:  true),
      ToDo(id: '03', todoText: 'saddsf sdfhkj jhsfdj'),
      ToDo(id: '04', todoText: 'saddsf sdfhkj dsfse sdf jhsfdj'),

    ];
  }
}