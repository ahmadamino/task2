import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = new GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(context: context, builder: (context) => Aleert());
            },
            icon: Icon(Icons.done),
          ),
        ],
        title: Text(
          'اضافة مهمة',
          style: TextStyle(color: Colors.red, fontSize: 25),
        ),
      ),
      body: Form(
        key: formstate,
        autovalidateMode: AutovalidateMode.always,
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              TextFormField(

                validator: (text) {
                  if (text!.length < 4) {
                    return 'لايمكن ان يكون النص اقل من اربع احرف';
                  }
                  if (text.length > 10) {
                    return 'لا يمكن ان يكون اكبر من 10 احرف';
                  }
                  return null;
                },
                //للتحقق اتوموتيكيا

                // autofocus: true,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  border: InputBorder.none,

                  hintText: 'المهمة',
                  prefixIcon: Icon(Icons.assessment),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(

                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  border: InputBorder.none,

                  hintText: 'التوصيف',
                  prefixIcon: Icon(Icons.description),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                validator: (text) {
                  if (text!.length < 4) {
                    return 'لايمكن ان يكون النص اقل من اربع احرف';
                  }
                  if (text.length > 10) {
                    return 'لا يمكن ان يكون اكبر من 10 احرف';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Aleert extends StatefulWidget {
  const Aleert({Key? key}) : super(key: key);

  @override
  State<Aleert> createState() => _AleertState();
}

class _AleertState extends State<Aleert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('تنبيه'),
      content: Text('هل تريد حفظ التغييرات'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('home');
          },
          child: Text('ok'),
        ),
      ],
    );
  }
}
