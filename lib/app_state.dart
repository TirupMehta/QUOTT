import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<SavedQuotesStruct> _savedQuotes = [];
  List<SavedQuotesStruct> get savedQuotes => _savedQuotes;
  set savedQuotes(List<SavedQuotesStruct> value) {
    _savedQuotes = value;
  }

  void addToSavedQuotes(SavedQuotesStruct value) {
    savedQuotes.add(value);
  }

  void removeFromSavedQuotes(SavedQuotesStruct value) {
    savedQuotes.remove(value);
  }

  void removeAtIndexFromSavedQuotes(int index) {
    savedQuotes.removeAt(index);
  }

  void updateSavedQuotesAtIndex(
    int index,
    SavedQuotesStruct Function(SavedQuotesStruct) updateFn,
  ) {
    savedQuotes[index] = updateFn(_savedQuotes[index]);
  }

  void insertAtIndexInSavedQuotes(int index, SavedQuotesStruct value) {
    savedQuotes.insert(index, value);
  }
}
