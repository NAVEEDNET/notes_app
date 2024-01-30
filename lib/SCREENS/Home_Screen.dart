import 'package:flutter/material.dart';
import 'package:note_app/MODELS/Note_Model.dart';
import 'package:note_app/MODELS/Note_Model.dart';
import 'package:note_app/SCREENS/Create_Note.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List<note> notes = List.empty(growable: true);
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
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              notes[index].title,
              style: const TextStyle(
                fontSize: 18.0
              ),
            ), 
            const SizedBox(height: 5,),
            Text(
              notes[index].body,
              style: const TextStyle(
                fontSize: 18.0
              ),
              maxLines: 100,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
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
  void onNewNoteCreated(note note ){
    notes.add(note);
    setState(() { });
  }
 
  void onNoteDeleted(int index){
    notes.removeAt(index);
    setState(() { });

  }
}