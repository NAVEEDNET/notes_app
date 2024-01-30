import 'package:flutter/material.dart';
import 'package:note_app/MODELS/Note_Model.dart';
import 'package:note_app/SCREENS/Note_view.dart';

class note_card extends StatelessWidget {
  const note_card({super.key, required this.note, required this.onNoteDeleted, required this.index});

  final notea note;
  final int index;
  final Function(int) onNoteDeleted;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder:(context)=>NoteView(note: note,index: index,onNoteDeleted: onNoteDeleted,)));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.title,
                style: const TextStyle(
                  fontSize: 18.0
                ),
              ), 
              const SizedBox(height: 5,),
              Text(
                note.body,
                style: const TextStyle(
                  fontSize: 18.0
                ),
                maxLines: 100,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}