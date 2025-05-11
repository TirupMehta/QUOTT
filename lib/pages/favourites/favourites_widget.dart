import '/backend/schema/structs/index.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/components/quote_card_small/quote_card_small_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favourites_model.dart';
export 'favourites_model.dart';

class FavouritesWidget extends StatefulWidget {
  const FavouritesWidget({super.key});

  static String routeName = 'Favourites';
  static String routePath = '/favourites';

  @override
  State<FavouritesWidget> createState() => _FavouritesWidgetState();
}

class _FavouritesWidgetState extends State<FavouritesWidget> {
  late FavouritesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavouritesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF6EDE4),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 32.0, 16.0, 32.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  functions.convertToTitleCase('Favourites'),
                                  'FAVOURITES',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SCHABO',
                                      fontSize: 40.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      lineHeight: 1.2,
                                    ),
                              ),
                              Text(
                                'See quotts you’ve liked and saved.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'American Typewriter',
                                      color: Color(0xFF626D7C),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Container(
                          height: 664.0,
                          decoration: BoxDecoration(),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Builder(
                                    builder: (context) {
                                      final savedQuotes =
                                          FFAppState().savedQuotes.toList();

                                      return ListView.separated(
                                        padding: EdgeInsets.fromLTRB(
                                          0,
                                          0,
                                          0,
                                          40.0,
                                        ),
                                        reverse: true,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: savedQuotes.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 32.0),
                                        itemBuilder:
                                            (context, savedQuotesIndex) {
                                          final savedQuotesItem =
                                              savedQuotes[savedQuotesIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                height: 236.13,
                                                child: custom_widgets
                                                    .ScreenshotWidget(
                                                  width: double.infinity,
                                                  height: 236.13,
                                                  triggerCapture:
                                                      _model.isCapturing,
                                                  child: () =>
                                                      QuoteCardSmallWidget(
                                                    quoteText: functions
                                                        .convertToTitleCase(
                                                            savedQuotesItem
                                                                .quoteText),
                                                    authorName:
                                                        '– ${savedQuotesItem.authorName}',
                                                    authorImage: savedQuotesItem
                                                        .authorImage,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        FFAppState()
                                                            .removeFromSavedQuotes(
                                                                savedQuotesItem);
                                                        safeSetState(() {});
                                                      },
                                                      text: 'Remove',
                                                      icon: Icon(
                                                        Icons
                                                            .delete_outline_rounded,
                                                        color:
                                                            Color(0xFFC32518),
                                                        size: 24.0,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: double.infinity,
                                                        height: 48.0,
                                                        padding: EdgeInsets.all(
                                                            12.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    4.0),
                                                        color:
                                                            Color(0xFFEDD2D2),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'American Typewriter',
                                                                  color: Color(
                                                                      0xFFC32518),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                        elevation: 0.0,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      _model.isCapturing = true;
                                                      safeSetState(() {});
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  2400));
                                                      _model.isCapturing =
                                                          false;
                                                      safeSetState(() {});
                                                    },
                                                    text: 'Share',
                                                    icon: Icon(
                                                      Icons.share_rounded,
                                                      size: 20.0,
                                                    ),
                                                    options: FFButtonOptions(
                                                      height: 48.0,
                                                      padding:
                                                          EdgeInsets.all(12.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  8.0,
                                                                  0.0),
                                                      color: Color(0x00EDD2D2),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'American Typewriter',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                lineHeight: 1.5,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 16.0)),
                                              ),
                                            ].divide(SizedBox(height: 12.0)),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ].addToEnd(SizedBox(height: 64.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavBarWidget(
                    pageName: 'favourites',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
