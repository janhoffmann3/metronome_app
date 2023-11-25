import 'signature.dart';

class Metronome {
  int tempo;
  final Signature signature;
  bool isActive;

  Metronome(this.tempo, this.signature, this.isActive);
}
