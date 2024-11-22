import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void toastError(BuildContext context, String message){
  toastification.show(
    context: context,
    type: ToastificationType.error,
    style: ToastificationStyle.fillColored,
    title: Text(message),
    alignment: Alignment.topCenter,
    autoCloseDuration: const Duration(seconds: 4),
    borderRadius: BorderRadius.circular(12.0),
    pauseOnHover: false,
  );
}
void toastSuccess(BuildContext context, String message){
  toastification.show(
    context: context,
    type: ToastificationType.success,
    style: ToastificationStyle.fillColored,
    title: Text(message),
    alignment: Alignment.topCenter,
    autoCloseDuration: const Duration(seconds: 4),
    borderRadius: BorderRadius.circular(12.0),
    pauseOnHover: false,
  );
}