import 'package:flutter/material.dart';
import 'package:flutter_web_sample/enum/resposive_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'responsive_notifier.freezed.dart';

final responsiveProvider =
    StateNotifierProvider<ResponsiveNotifier, ResponsiveState>(
  (ref) => ResponsiveNotifier(),
);

class ResponsiveNotifier extends StateNotifier<ResponsiveState> {
  ResponsiveNotifier() : super(ResponsiveState());

  /// レスポンシブ(small/medium/large)のwidthの基準値の設定
  /// mediumBegin : smallの終了幅およびmediumの開始幅
  /// mediumEnd : mediumの終了幅およびlargeの開始幅
  ///
  void setResposiveWidth({
    double mediumBegin = 600,
    double mediumEnd = 840,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state = state.copyWith(
        mediumBegin: mediumBegin,
        mediumEnd: mediumEnd,
      );
    });
  }

  void updateSize(Size size) {
    // Unhandled Exception: setState() or markNeedsBuild() called during build
    // を回避
    WidgetsBinding.instance.addPostFrameCallback((_) {
      state = state.copyWith(size: size);
    });
  }

  ResponsiveType getResponsiveType() {
    final width = state.size.width;
    if (state.mediumEnd <= width) {
      return ResponsiveType.large;
    } else if (state.mediumBegin <= width) {
      return ResponsiveType.medium;
    } else {
      return ResponsiveType.small;
    }
  }
}

@freezed
class ResponsiveState with _$ResponsiveState {
  factory ResponsiveState({
    @Default(Size.zero) Size size,
    @Default(600) double mediumBegin,
    @Default(840) double mediumEnd,
  }) = _ResponsiveState;
  ResponsiveState._();

  // レスポンシブ(small/medium/large)の判定
  late final isSmall = size.width < mediumBegin;
  late final isMedium = mediumBegin <= size.width && size.width < mediumEnd;
  late final isLarge = mediumEnd < size.width;
}
