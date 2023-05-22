
import 'package:consejero_mental_health/pages/safe_pages.dart';
import 'package:consejero_mental_health/sqlite.dart/note.dart';
import 'package:consejero_mental_health/sqlite.dart/operation.dart';
import 'package:flutter/material.dart';


class ListPage extends StatelessWidget {
  static const String ROUTE = "/";

  @override
  Widget build(BuildContext context) {
    return _MyList();
  }
}

class _MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<_MyList> {
  List<Note>? notes = [];

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_box),
        onPressed: () {
          Navigator.pushNamed(context, SavePage.ROUTE, arguments: Note.empty())
              .then((value) => setState(() {
                    _loadData();
                  }));
        },
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: const Color(0xffF6DEC8),
        centerTitle: true,
        title: Text("Blog de notas"),
        //leading: Image.network(
          //  'https://cdn-icons-png.flaticon.com/512/427/427735.png',
          //  width: 48,
          //  height: 48),
      ),
      backgroundColor: const Color(0xffF6DEC8),
      body: Container(
        alignment: Alignment.center,
        child: ListView.builder(
          itemCount: notes?.length,
          itemBuilder: (_, i) => _createItem(i),
        ),
      ),
    );
  }

  _loadData() async {
    List<Note>? auxNote = await Operation.notes();
    setState(() {
      notes = auxNote;
    });
  }

  _createItem(int i) {
    return Dismissible(
      key: Key(i.toString()),
      direction: DismissDirection.startToEnd,
      background: Container(
        padding: EdgeInsets.only(left: 8),
        color: Colors.red,
        child: Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              Icons.delete,
              color: Colors.white,
            )),
      ),
      onDismissed: (direction) {
        print(direction);
        Operation.delete(notes![i]);
      },
      child: ListTile(
        title: Text((notes?[i].title).toString()),
        trailing: MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, SavePage.ROUTE, arguments: notes![i])
                  .then((value) => setState(() {
                        _loadData();
                      }));
            },
            child: Icon(Icons.edit)),
      ),
    );
  }
}
