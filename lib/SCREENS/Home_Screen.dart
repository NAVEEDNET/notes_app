import 'package:flutter/material.dart';
import 'package:note_app/MODELS/Note_Model.dart';
import 'package:note_app/MODELS/Note_Model.dart';
import 'package:note_app/SCREENS/Create_Note.dart';
import 'package:note_app/SCREENS/Note_card/Note_Card.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List<notea> notes = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes',
        style: TextStyle(color: Colors.white,fontSize: 25.0),),
      ),

      body: ListView.builder(
  itemCount: notes.length,
  itemBuilder: (context, index) {
    return note_card(note:notes[index],index:index,onNoteDeleted:onNoteDeleted);
  },
),


      floatingActionButton: FloatingActionButton(
        onPressed: ( ){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  CreateNote(onNewNoteCreated: onNewNoteCreated,)));
        },
        child: const Icon(Icons.add),
        ),




    );
  }
  void onNewNoteCreated(notea note ){
    notes.add(note);
    setState(() { });
  }
 
  void onNoteDeleted(int index){
    notes.removeAt(index);
    setState(() { });

  }
}