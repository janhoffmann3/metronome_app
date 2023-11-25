// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$metronomeControllerHash() =>
    r'98f09c6165f7689350593fccb6cc230e9b5593f7';

/// ### Main page of the app
///
///  It contains main componenents:
///
/// 1. [MainPageTickerWidget] for displaying current beat
/// 2. [MainPageDisplayWidget] for showing selected tempo
/// 3. [MainPageTempoSlider] for setting the tempo (you can also set the tempo using plus/minus buttons in the [MainPageDisplayWidget]),
/// 4. [MainPageTapMeButton] for manualy tapping the tempo
/// 5. [MainPageBottomMenuWidget] that works as a bottom navigation bar you can _start_ or _stop_ the metronome, or select different _sounds_ and _signatures_
///
///
///
/// Copied from [MetronomeController].
@ProviderFor(MetronomeController)
final metronomeControllerProvider =
    AutoDisposeNotifierProvider<MetronomeController, Metronome>.internal(
  MetronomeController.new,
  name: r'metronomeControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$metronomeControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MetronomeController = AutoDisposeNotifier<Metronome>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
