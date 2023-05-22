
import 'package:consejero_mental_health/sqlite.dart/note.dart';
import 'package:consejero_mental_health/sqlite.dart/operation.dart';
import 'package:flutter/material.dart';

class SavePage extends StatelessWidget {
  static const String ROUTE = "/save";

  final _formkey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Note note = ModalRoute.of(context)?.settings.arguments as Note;
    _init(note);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xffF6DEC8),
        title: Text("Crea o edita una nota"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.note_add),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color(0xffF6DEC8),
      body: Container(
        child: _buildForm(note),
      ),
    );
  }

  _init(Note note) {
    titleController.text = note.title ?? "";
    contentController.text = note.content ?? "";
  }

  Widget _buildForm(Note note) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _formkey,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: titleController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "¡ESTE CAMPO ES OBLIGATORIO!";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Título",
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: contentController,
              maxLines: 8,
              maxLength: 180,
              validator: (value) {
                if (value!.isEmpty) {
                  return "¡ESTE CAMPO ES OBLIGATORIO!";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Contenido",
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),

            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue[300],
              ),
              icon: Icon(Icons.save),
              label: Text("Guardar"),
              onPressed: () {  
                if (_formkey.currentState!.validate()) {
                  if (note.id != null) {
                    //actualizar
                    note.title = titleController.text;
                    note.content = contentController.text;
                    Operation.update(note);
                  } else {
                    //insertar
                    Operation.insert(Note(
                        title: titleController.text,
                        content: contentController.text));
                  }
                }                
              },
            )
          ],
        ),
      ),
    );
  }
}
