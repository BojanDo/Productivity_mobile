import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

import '../core/config/colors.dart';
import '../core/config/theme_data.dart';

class Editor extends StatefulWidget {
  const Editor({super.key, required this.quillController});

  final quill.QuillController quillController;

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    widget.quillController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Theme(
        data: theme,
        child: Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary, // Set background color
            border: Border.all(
              color: Theme.of(context).dividerTheme.color!,
            ), // Set border color
            borderRadius: BorderRadius.circular(12), // Set border radius
          ),
          child: Column(
            children: <Widget>[
              quill.QuillSimpleToolbar(
                controller: widget.quillController,
                configurations: const quill.QuillSimpleToolbarConfigurations(
                  showFontFamily: false,
                  showFontSize: false,
                  showListCheck: false,
                  showIndent: false,
                  showSearchButton: false,
                  showSubscript: false,
                  showSuperscript: false,
                  showClipboardCut: false,
                  showClipboardCopy: false,
                  showClipboardPaste: false,
                ),
              ),
              const Divider(),
              SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  // Add padding around the text
                  child: quill.QuillEditor.basic(
                    controller: widget.quillController,
                    configurations: const quill.QuillEditorConfigurations(),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
