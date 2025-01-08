import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

import '../../../../core/config/constants.dart';
import '../../../../widgets/attachments.dart';
import '../../../../widgets/editor.dart';
import '../../../Documents/domain/entities/documents.dart';
import '../bloc/task/task_bloc.dart';

class TaskPageInner extends StatefulWidget {
  const TaskPageInner({super.key});

  @override
  State<TaskPageInner> createState() => _TaskPageInnerState();
}

class _TaskPageInnerState extends State<TaskPageInner> {
  bool _isReadOnly = true;

  quill.QuillController _quillController = quill.QuillController(
    readOnly: true,
    document: quill.Document.fromJson(<Map<String, dynamic>>[
      <String, String>{'insert': 'Welcome to the editor!\n'},
      <String, String>{'insert': 'This is the default content.\n'}
    ]),
    selection: const TextSelection.collapsed(offset: 0),
  );

  AttachmentManager attachmentManager = AttachmentManager(
    existing: <Document>[
      const Document(id: 1, title: 'Document1.pdf', path: ''),
      const Document(id: 2, title: 'Image1.png', path: ''),
    ],
    added: <File>[],
    deleted: <int>[],
  );



  @override
  void dispose() {
    _quillController.dispose();
    super.dispose();
  }

  void _saveContent() {
    final String content =
        jsonEncode(_quillController.document.toDelta().toJson());
    final dynamic json = jsonDecode(content);
    print('Editor Content: $content');
    print(attachmentManager);
  }

  void _toggleReadOnly() {
    setState(() {
      _isReadOnly = !_isReadOnly;
      _quillController = quill.QuillController(
        readOnly: _isReadOnly, // Toggle read-only state
        document: _quillController.document,
        selection: _quillController.selection,
      );
    });
  }


  Widget _listBuilder() => Container(
        color: Colors.blue.withOpacity(0.3), // Light blue background
        child: Column(
          children: List.generate(
              50,
              (int index) => ListTile(
                    title: Text('List Item ${index + 1}'),
                    subtitle: Text('Subtitle for item ${index + 1}'),
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                  )),
        ),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Task Page'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.save),
              onPressed:
                  _saveContent, // Call _saveContent when the button is pressed
            ),
            IconButton(
              icon: Icon(_isReadOnly ? Icons.edit : Icons.lock),
              onPressed:
                  _toggleReadOnly, // Toggle between read-only and edit mode
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Editor(quillController: _quillController,),
                const SizedBox(height: 16),
                AttachmentsWidget(manager: attachmentManager,),
                const SizedBox(height: 16),
                _listBuilder(),
              ],
            ),
          ),
        ),
      );
}
