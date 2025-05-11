import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/components/quote_card_big/quote_card_big_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 48.0, 16.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/QUOTT_logo_smooth_highres.png',
                                        width: 120.0,
                                        height: 70.0,
                                        fit: BoxFit.cover,
                                        alignment: Alignment(0.0, 0.0),
                                      ),
                                    ),
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
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 343.0,
                                  height: 441.0,
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    children: [
                                      Container(
                                        width: 343.0,
                                        height: 339.0,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 319.0,
                                        height: 374.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF6EDE4),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.quoteCardBigModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: QuoteCardBigWidget(
                                          quoteText: valueOrDefault<String>(
                                            functions.convertToTitleCase(
                                                _model.quoteText!),
                                            'Please Generate Quote',
                                          ),
                                          authorName:
                                              '– ${valueOrDefault<String>(
                                            _model.authorName,
                                            'Please Generate Quote',
                                          )}',
                                          authorImage: valueOrDefault<String>(
                                            _model.imageURL,
                                            'https://images.unsplash.com/photo-1735596365888-ad6d151533f2?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 294.4,
                                        height: 441.0,
                                        child: custom_widgets.ScreenshotWidget(
                                          width: 294.4,
                                          height: 441.0,
                                          triggerCapture: _model.isCapturing,
                                          child: () => QuoteCardBigWidget(
                                            quoteText: valueOrDefault<String>(
                                              functions.convertToTitleCase(
                                                  _model.quoteText!),
                                              'Please Generate Quote',
                                            ),
                                            authorName:
                                                '– ${valueOrDefault<String>(
                                              _model.authorName,
                                              'Please Generate Quote',
                                            )}',
                                            authorImage: valueOrDefault<String>(
                                              _model.imageURL,
                                              'https://images.unsplash.com/photo-1735596365888-ad6d151533f2?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      _model.apiResultm2z =
                                          await GetRandomQuoteCall.call();

                                      _model.authorName =
                                          GetRandomQuoteCall.authorName(
                                        (_model.apiResultm2z?.jsonBody ?? ''),
                                      );
                                      _model.quoteText =
                                          GetRandomQuoteCall.quoteText(
                                        (_model.apiResultm2z?.jsonBody ?? ''),
                                      );
                                      safeSetState(() {});
                                      if (_model.authorName != null &&
                                          _model.authorName != '') {
                                        _model.apiResultqyv =
                                            await GetAuthorImageUnplashCall
                                                .call(
                                          query: _model.authorName,
                                        );

                                        _model.imageURL = getJsonField(
                                          (_model.apiResultqyv?.jsonBody ?? ''),
                                          r'''$.results[0].urls.regular''',
                                        ).toString();
                                        safeSetState(() {});
                                      }

                                      safeSetState(() {});
                                    },
                                    text: 'New Quott',
                                    icon: Icon(
                                      Icons.refresh_rounded,
                                      size: 20.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 48.0,
                                      padding: EdgeInsets.all(12.0),
                                      iconAlignment: IconAlignment.end,
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 8.0, 0.0),
                                      color: Color(0xFFEDD2D2),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'American Typewriter',
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            lineHeight: 1.5,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    _model.isCapturing = true;
                                    safeSetState(() {});
                                    await Future.delayed(
                                        const Duration(milliseconds: 2400));
                                    _model.isCapturing = false;
                                    safeSetState(() {});
                                  },
                                  text: 'Share',
                                  icon: Icon(
                                    Icons.share_rounded,
                                    size: 20.0,
                                  ),
                                  options: FFButtonOptions(
                                    height: 48.0,
                                    padding: EdgeInsets.all(12.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 8.0, 0.0),
                                    color: Color(0x00EDD2D2),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'American Typewriter',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          lineHeight: 1.5,
                                        ),
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  fillColor: Color(0x00EDD2D2),
                                  icon: Icon(
                                    Icons.favorite_border_rounded,
                                    color: Colors.black,
                                    size: 22.0,
                                  ),
                                  onPressed: () async {
                                    FFAppState()
                                        .addToSavedQuotes(SavedQuotesStruct(
                                      quoteText: _model.quoteText,
                                      authorName: _model.authorName,
                                      authorImage: _model.imageURL,
                                    ));
                                    safeSetState(() {});
                                  },
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavBarWidget(
                    pageName: 'home',
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
