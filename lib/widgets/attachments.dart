import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../features/Documents/domain/entities/documents.dart';
import '../features/Tasks/presentation/bloc/task/task_bloc.dart';



class AttachmentsWidget extends StatefulWidget {
  final AttachmentManager manager;

  const AttachmentsWidget({super.key, required this.manager});

  @override
  State<AttachmentsWidget> createState() => _AttachmentsWidgetState();
}

class _AttachmentsWidgetState extends State<AttachmentsWidget> {
  void _addAttachment() async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
    );

    if (result != null) {
      final File file = File(result.paths.first!);
      setState(() {
        widget.manager.addFile(file);
      });
    }
  }

  void _removeAttachment(File file) {
    setState(() {
      widget.manager.removeFile(file);
    });
  }

  void _deleteExistingDocument(int documentId) {
    setState(() {
      widget.manager.deleteExistingDocument(documentId);
      widget.manager.existing
          .removeWhere((Document doc) => doc.id == documentId);
    });
  }

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      InkWell(
        onTap: _addAttachment,
        child: const Row(
          children: <Widget>[
            Icon(Icons.attachment, color: Colors.black),
            SizedBox(width: 8),
            Text(
              'Add Attachments',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 16),
      if (widget.manager.existing.isNotEmpty) ...<Widget>[
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.manager.existing.length,
          itemBuilder: (BuildContext context, int index) {
            final Document doc = widget.manager.existing[index];
            return ListTile(
              leading: const Icon(Icons.description_outlined),
              title: Text(doc.title),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () => _deleteExistingDocument(doc.id),
              ),
            );
          },
        ),
      ],
      const SizedBox(height: 16),
      if (widget.manager.added.isNotEmpty) ...<Widget>[
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.manager.added.length,
          itemBuilder: (BuildContext context, int index) {
            final File file = widget.manager.added[index];
            return ListTile(
              leading: const Icon(Icons.description_outlined),
              title: Text(file.path.split('/').last),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () => _removeAttachment(file),
              ),
            );
          },
        ),
      ],
    ],
  );
}
