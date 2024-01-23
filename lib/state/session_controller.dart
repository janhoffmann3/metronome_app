import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/session.dart';

class SessionController extends StateNotifier<Session?> {
  SessionController() : super(null);

  void startSession() {
    state = Session(id: null, startTime: DateTime.now(), endTime: null);
  }

  void endSession() {
    if (state != null) {
      state = Session(
          id: state!.id, startTime: state!.startTime, endTime: DateTime.now());
    }
  }
}
