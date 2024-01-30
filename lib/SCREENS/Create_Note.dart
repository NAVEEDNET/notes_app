import 'package:flutter/material.dart';
import 'package:note_app/MODELS/Note_Model.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({Key? key, required this.onNewNoteCreated});

  final Function(note) onNewNoteCreated;

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              style: const TextStyle(
                fontSize: 28.0,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Title",
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: bodyController,
              style: const TextStyle(
                fontSize: 18.0,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Your Notes",
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (titleController.text.isEmpty){
            return ;
          }
          if (bodyController.text.isEmpty){
            return ;
          }

        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
