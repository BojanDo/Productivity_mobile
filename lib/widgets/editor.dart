import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

import '../core/config/colors.dart';

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
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: kSecondaryBackgroundColor, // Set background color
      border: Border.all(color: kBorderColor), // Set border color
      borderRadius: BorderRadius.circular(12), // Set border radius
    ),
    child: Column(
      children: <Widget>[
        AbsorbPointer(
          absorbing: widget.quillController.readOnly,
          // Make the entire editor unclickable when in read-only mode
          child: quill.QuillSimpleToolbar(
            controller: widget.quillController,
            configurations: const quill.QuillSimpleToolbarConfigurations(
              showDividers: true,
              showFontFamily: false,
              showFontSize: false,
              showBoldButton: true,
              showItalicButton: true,
              showUnderLineButton: true,
              showStrikeThrough: true,
              showInlineCode: true,
              showColorButton: true,
              showBackgroundColorButton: true,
              showClearFormat: true,
              showAlignmentButtons: false,
              showLeftAlignment: true,
              showCenterAlignment: true,
              showRightAlignment: true,
              showJustifyAlignment: true,
              showHeaderStyle: true,
              showListNumbers: true,
              showListBullets: true,
              showListCheck: false,
              showCodeBlock: true,
              showQuote: true,
              showIndent: false,
              showLink: true,
              showUndo: true,
              showRedo: true,
              showDirection: false,
              showSearchButton: false,
              showSubscript: false,
              showSuperscript: false,
              showClipboardCut: false,
              showClipboardCopy: false,
              showClipboardPaste: false,
              linkStyleType: quill.LinkStyleType.original,
              headerStyleType: quill.HeaderStyleType.original,
              searchButtonType: quill.SearchButtonType.modern,
            ),
          ),
        ),
        const Divider(),
        SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            // Add padding around the text
            child: AbsorbPointer(
              absorbing: widget.quillController.readOnly,
              // Make the editor unclickable when in read-only mode
              child: quill.QuillEditor.basic(
                controller: widget.quillController,
                configurations: const quill.QuillEditorConfigurations(),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
