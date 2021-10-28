import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'choice.freezed.dart';

@freezed
class Choice with _$Choice {
  const factory Choice.numberChoice({
    required String name,
    required int theNumber,
  }) = NumberChoice;
  const factory Choice.colorChoice({
    required String name,
    required Color theColor,
  }) = ColorChoice;
}
