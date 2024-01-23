import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/session.dart';

/// ###SessionController class
///
/// Controls user's sessions
///
///
class SessionController extends StateNotifier<Session?> {
  SessionController() : super(null);

  // Start new session and save it to state
  void startSession() {
    state = Session(id: null, startTime: DateTime.now(), endTime: null);
  }

  // End session and save it to state
  void endSession() {
    if (state != null) {
      state = Session(
          id: state!.id, startTime: state!.startTime, endTime: DateTime.now());
    }
  }
}
