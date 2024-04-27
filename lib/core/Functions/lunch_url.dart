import 'package:book_store/core/utils/constants.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url == null) {
    Uri uri = Uri.parse(url!);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  } else {
    // Handle the case where the url is null
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: kContainerColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        content: Text(
          'can\'t lunch $url',
          style: Styles.textLight10,
        ),
      ),
    );
  }
}
