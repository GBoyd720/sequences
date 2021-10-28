// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChoiceTearOff {
  const _$ChoiceTearOff();

  NumberChoice numberChoice({required String name, required int theNumber}) {
    return NumberChoice(
      name: name,
      theNumber: theNumber,
    );
  }

  ColorChoice colorChoice({required String name, required Color theColor}) {
    return ColorChoice(
      name: name,
      theColor: theColor,
    );
  }
}

/// @nodoc
const $Choice = _$ChoiceTearOff();

/// @nodoc
mixin _$Choice {
  String get name => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int theNumber) numberChoice,
    required TResult Function(String name, Color theColor) colorChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int theNumber)? numberChoice,
    TResult Function(String name, Color theColor)? colorChoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberChoice value) numberChoice,
    required TResult Function(ColorChoice value) colorChoice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberChoice value)? numberChoice,
    TResult Function(ColorChoice value)? colorChoice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChoiceCopyWith<Choice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceCopyWith<$Res> {
  factory $ChoiceCopyWith(Choice value, $Res Function(Choice) then) =
      _$ChoiceCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$ChoiceCopyWithImpl<$Res> implements $ChoiceCopyWith<$Res> {
  _$ChoiceCopyWithImpl(this._value, this._then);

  final Choice _value;
  // ignore: unused_field
  final $Res Function(Choice) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $NumberChoiceCopyWith<$Res> implements $ChoiceCopyWith<$Res> {
  factory $NumberChoiceCopyWith(
          NumberChoice value, $Res Function(NumberChoice) then) =
      _$NumberChoiceCopyWithImpl<$Res>;
  @override
  $Res call({String name, int theNumber});
}

/// @nodoc
class _$NumberChoiceCopyWithImpl<$Res> extends _$ChoiceCopyWithImpl<$Res>
    implements $NumberChoiceCopyWith<$Res> {
  _$NumberChoiceCopyWithImpl(
      NumberChoice _value, $Res Function(NumberChoice) _then)
      : super(_value, (v) => _then(v as NumberChoice));

  @override
  NumberChoice get _value => super._value as NumberChoice;

  @override
  $Res call({
    Object? name = freezed,
    Object? theNumber = freezed,
  }) {
    return _then(NumberChoice(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      theNumber: theNumber == freezed
          ? _value.theNumber
          : theNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$NumberChoice with DiagnosticableTreeMixin implements NumberChoice {
  const _$NumberChoice({required this.name, required this.theNumber});

  @override
  final String name;
  @override
  final int theNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Choice.numberChoice(name: $name, theNumber: $theNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Choice.numberChoice'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('theNumber', theNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberChoice &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.theNumber, theNumber) ||
                const DeepCollectionEquality()
                    .equals(other.theNumber, theNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(theNumber);

  @JsonKey(ignore: true)
  @override
  $NumberChoiceCopyWith<NumberChoice> get copyWith =>
      _$NumberChoiceCopyWithImpl<NumberChoice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int theNumber) numberChoice,
    required TResult Function(String name, Color theColor) colorChoice,
  }) {
    return numberChoice(name, theNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int theNumber)? numberChoice,
    TResult Function(String name, Color theColor)? colorChoice,
    required TResult orElse(),
  }) {
    if (numberChoice != null) {
      return numberChoice(name, theNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberChoice value) numberChoice,
    required TResult Function(ColorChoice value) colorChoice,
  }) {
    return numberChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberChoice value)? numberChoice,
    TResult Function(ColorChoice value)? colorChoice,
    required TResult orElse(),
  }) {
    if (numberChoice != null) {
      return numberChoice(this);
    }
    return orElse();
  }
}

abstract class NumberChoice implements Choice {
  const factory NumberChoice({required String name, required int theNumber}) =
      _$NumberChoice;

  @override
  String get name => throw _privateConstructorUsedError;
  int get theNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NumberChoiceCopyWith<NumberChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorChoiceCopyWith<$Res> implements $ChoiceCopyWith<$Res> {
  factory $ColorChoiceCopyWith(
          ColorChoice value, $Res Function(ColorChoice) then) =
      _$ColorChoiceCopyWithImpl<$Res>;
  @override
  $Res call({String name, Color theColor});
}

/// @nodoc
class _$ColorChoiceCopyWithImpl<$Res> extends _$ChoiceCopyWithImpl<$Res>
    implements $ColorChoiceCopyWith<$Res> {
  _$ColorChoiceCopyWithImpl(
      ColorChoice _value, $Res Function(ColorChoice) _then)
      : super(_value, (v) => _then(v as ColorChoice));

  @override
  ColorChoice get _value => super._value as ColorChoice;

  @override
  $Res call({
    Object? name = freezed,
    Object? theColor = freezed,
  }) {
    return _then(ColorChoice(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      theColor: theColor == freezed
          ? _value.theColor
          : theColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
class _$ColorChoice with DiagnosticableTreeMixin implements ColorChoice {
  const _$ColorChoice({required this.name, required this.theColor});

  @override
  final String name;
  @override
  final Color theColor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Choice.colorChoice(name: $name, theColor: $theColor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Choice.colorChoice'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('theColor', theColor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ColorChoice &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.theColor, theColor) ||
                const DeepCollectionEquality()
                    .equals(other.theColor, theColor)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(theColor);

  @JsonKey(ignore: true)
  @override
  $ColorChoiceCopyWith<ColorChoice> get copyWith =>
      _$ColorChoiceCopyWithImpl<ColorChoice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int theNumber) numberChoice,
    required TResult Function(String name, Color theColor) colorChoice,
  }) {
    return colorChoice(name, theColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int theNumber)? numberChoice,
    TResult Function(String name, Color theColor)? colorChoice,
    required TResult orElse(),
  }) {
    if (colorChoice != null) {
      return colorChoice(name, theColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberChoice value) numberChoice,
    required TResult Function(ColorChoice value) colorChoice,
  }) {
    return colorChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberChoice value)? numberChoice,
    TResult Function(ColorChoice value)? colorChoice,
    required TResult orElse(),
  }) {
    if (colorChoice != null) {
      return colorChoice(this);
    }
    return orElse();
  }
}

abstract class ColorChoice implements Choice {
  const factory ColorChoice({required String name, required Color theColor}) =
      _$ColorChoice;

  @override
  String get name => throw _privateConstructorUsedError;
  Color get theColor => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ColorChoiceCopyWith<ColorChoice> get copyWith =>
      throw _privateConstructorUsedError;
}
