import 'package:flutter_form_bloc/flutter_form_bloc.dart';

String formatDate(String date) =>
    DateFormat('dd. MM. yyyy HH:mm').format(DateTime.parse(date));