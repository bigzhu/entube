import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import './AwesomeSnackbarContent.dart';

final errorMeesageStateProvider = StateProvider<String?>((ref) {
  return null;
});

showErrorSnackbar(BuildContext context, String message) {
  SnackBar snackBar = SnackBar(
    duration: const Duration(days: 1),

    /// need to set following properties for best effect of awesome_snackbar_content
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Oh BigZhu !',
      message: message,

      /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      contentType: ContentType.failure,
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
