// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class ScreenshotWidget extends StatefulWidget {
  const ScreenshotWidget({
    super.key,
    this.width,
    this.height,
    this.child,
    required this.triggerCapture, // Add a Boolean parameter to trigger screenshot
  });

  final double? width;
  final double? height;
  final Widget Function()? child;
  final bool triggerCapture; // Boolean parameter for triggering screenshot

  @override
  State<ScreenshotWidget> createState() => _ScreenshotWidgetState();
}

class _ScreenshotWidgetState extends State<ScreenshotWidget> {
  final ScreenshotController _screenshotController = ScreenshotController();

  @override
  void didUpdateWidget(covariant ScreenshotWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Check if triggerCapture has changed from false to true
    if (widget.triggerCapture && !oldWidget.triggerCapture) {
      captureAndShare(); // Trigger screenshot capture and sharing
    }
  }

  Future<void> captureAndShare() async {
    try {
      // Capture the widget as an image
      final image = await _screenshotController.capture();
      if (image != null) {
        // Save Image Temporarily
        final directory = await getTemporaryDirectory();
        final filePath = '${directory.path}/quote_image.png';
        final file = File(filePath);
        await file.writeAsBytes(image);

        print("Screenshot capture started...");

        // Share Image
        await Share.shareFiles([filePath], text: 'Check out this quote!');
      }
    } catch (e) {
      print('Error capturing or sharing screenshot: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: _screenshotController,
      child: Container(
        width: widget.width,
        height: widget.height,
        child: widget.child != null ? widget.child!() : SizedBox(),
      ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
