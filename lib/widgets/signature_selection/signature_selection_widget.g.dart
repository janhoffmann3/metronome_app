// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signature_selection_widget.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tempoNotifierHash() => r'd7cd1c757a254dd3531aa69425da99de1ce73525';

/// ### Signature selection widget
///
/// User can control and set the signature of the metronome using this widget.
/// It contains four [SignatureSelectionSignatureChangeButton] (two for decreasing and two for increasing) for changing the signature.
/// It contains two [SignatureDisplayWidget] for showing the signature numeral on screen.
///
///
/// Copied from [TempoNotifier].
@ProviderFor(TempoNotifier)
final tempoNotifierProvider =
    AutoDisposeNotifierProvider<TempoNotifier, int>.internal(
  TempoNotifier.new,
  name: r'tempoNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tempoNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TempoNotifier = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
