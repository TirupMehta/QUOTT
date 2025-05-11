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
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String? quoteText = '';

  String? authorName = '';

  String? imageURL;

  List<SavedQuotesStruct> savedQuotes = [];
  void addToSavedQuotes(SavedQuotesStruct item) => savedQuotes.add(item);
  void removeFromSavedQuotes(SavedQuotesStruct item) =>
      savedQuotes.remove(item);
  void removeAtIndexFromSavedQuotes(int index) => savedQuotes.removeAt(index);
  void insertAtIndexInSavedQuotes(int index, SavedQuotesStruct item) =>
      savedQuotes.insert(index, item);
  void updateSavedQuotesAtIndex(
          int index, Function(SavedQuotesStruct) updateFn) =>
      savedQuotes[index] = updateFn(savedQuotes[index]);

  bool isCapturing = false;

  bool isFavourite = false;

  ///  State fields for stateful widgets in this page.

  // Model for quoteCardBig component.
  late QuoteCardBigModel quoteCardBigModel;
  // Stores action output result for [Backend Call - API (GetRandomQuote)] action in Button widget.
  ApiCallResponse? apiResultm2z;
  // Stores action output result for [Backend Call - API (GetAuthorImageUnplash)] action in Button widget.
  ApiCallResponse? apiResultqyv;
  // Model for navBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    quoteCardBigModel = createModel(context, () => QuoteCardBigModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    quoteCardBigModel.dispose();
    navBarModel.dispose();
  }
}
