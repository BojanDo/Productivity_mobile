import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:html/dom.dart';

import '../core/config/colors.dart';
import '../features/Tasks/domain/entities/tasks.dart';

class NotificationsDescription extends StatelessWidget {
  const NotificationsDescription({super.key, required this.description});

  final String description;

  Map<String, String> styling(Status status) =>
      <String, String>{
        'color': status.textColor
            .toHex(withAlpha: false, leadingHashSign: true),
        'background': status.background
            .toHex(withAlpha: false, leadingHashSign: true),
        'border-radius': '5px',
        'padding': '2px 5px',
      };

  @override
  Widget build(BuildContext context) =>
      HtmlWidget(
        description,
        customStylesBuilder: (element) {
          if (element.classes.contains('status-todo')) {
            return styling(Status.todo);
          }
          if (element.classes.contains('status-inProgress')) {
            return styling(Status.inProgress);
          }
          if (element.classes.contains('status-review')) {
            return styling(Status.review);
          }
          if (element.classes.contains('status-test')) {
            return styling(Status.test);
          }
          if (element.classes.contains('status-closed')) {
            return styling(Status.closed);
          }

          return {
            'white-space': 'pre',
          };
        },
      );
}
