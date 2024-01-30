import 'package:flutter/material.dart';
import 'package:note_app/MODELS/Note_Model.dart';

class NoteView extends StatelessWidget {
  const NoteView({Key? key, required this.note, required this.index, required this.onNoteDeleted}) : super(key: key);

  final notea note;
  final int index;

  final Function(int) onNoteDeleted;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Note View',
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        actions: [
          IconButton(onPressed: (){
            showDialog(
              context: context, 
              builder: (context){
                  return(
                    AlertDialog(
                      title: const Text('Delete This Note ?'),
                      content: Text('Note ${note.title} Will be Deleted!'),

                      actions: [
                        TextButton(onPressed: (){
                              Navigator.of(context).pop();
                              onNoteDeleted(index);
                              Navigator.of(context).pop();
                        },
                         child: const Text('DELETE')),
                          TextButton(onPressed: (){
                              Navigator.of(context).pop();
                        },
                         child: const Text('CANCEL')),
                      ],

                    )
                  );
              }
              );
          },
          icon:Icon(Icons.delete),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: const TextStyle(
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              note.body,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
