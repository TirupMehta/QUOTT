import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'quote_card_small_model.dart';
export 'quote_card_small_model.dart';

class QuoteCardSmallWidget extends StatefulWidget {
  const QuoteCardSmallWidget({
    super.key,
    this.quoteText,
    this.authorName,
    String? authorImage,
  }) : this.authorImage = authorImage ??
            'https://images.unsplash.com/photo-1735596365888-ad6d151533f2?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

  final String? quoteText;
  final String? authorName;
  final String authorImage;

  @override
  State<QuoteCardSmallWidget> createState() => _QuoteCardSmallWidgetState();
}

class _QuoteCardSmallWidgetState extends State<QuoteCardSmallWidget> {
  late QuoteCardSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuoteCardSmallModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Container.png',
                    width: 32.0,
                    height: 12.0,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/QUOTT_white_text_no_bg.png',
                    width: 70.0,
                    height: 27.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Text(
              functions.convertToTitleCase(widget!.quoteText!),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'SCHABO',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    fontSize: 28.0,
                    letterSpacing: 0.0,
                    lineHeight: 1.2,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    widget!.authorImage,
                    width: 32.0,
                    height: 32.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  '– ${widget!.authorName}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'American Typewriter',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        lineHeight: 1.5,
                      ),
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
          ].divide(SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
