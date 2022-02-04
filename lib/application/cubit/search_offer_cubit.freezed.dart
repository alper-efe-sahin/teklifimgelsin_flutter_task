// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_offer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchOfferStateTearOff {
  const _$SearchOfferStateTearOff();

  _Initial initial({required double amount, required double maturity}) {
    return _Initial(
      amount: amount,
      maturity: maturity,
    );
  }
}

/// @nodoc
const $SearchOfferState = _$SearchOfferStateTearOff();

/// @nodoc
mixin _$SearchOfferState {
  double get amount => throw _privateConstructorUsedError;
  double get maturity => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount, double maturity) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double amount, double maturity)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount, double maturity)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchOfferStateCopyWith<SearchOfferState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchOfferStateCopyWith<$Res> {
  factory $SearchOfferStateCopyWith(
          SearchOfferState value, $Res Function(SearchOfferState) then) =
      _$SearchOfferStateCopyWithImpl<$Res>;
  $Res call({double amount, double maturity});
}

/// @nodoc
class _$SearchOfferStateCopyWithImpl<$Res>
    implements $SearchOfferStateCopyWith<$Res> {
  _$SearchOfferStateCopyWithImpl(this._value, this._then);

  final SearchOfferState _value;
  // ignore: unused_field
  final $Res Function(SearchOfferState) _then;

  @override
  $Res call({
    Object? amount = freezed,
    Object? maturity = freezed,
  }) {
    return _then(_value.copyWith(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      maturity: maturity == freezed
          ? _value.maturity
          : maturity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $SearchOfferStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({double amount, double maturity});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SearchOfferStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? amount = freezed,
    Object? maturity = freezed,
  }) {
    return _then(_Initial(
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      maturity: maturity == freezed
          ? _value.maturity
          : maturity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.amount, required this.maturity});

  @override
  final double amount;
  @override
  final double maturity;

  @override
  String toString() {
    return 'SearchOfferState.initial(amount: $amount, maturity: $maturity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.maturity, maturity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(maturity));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double amount, double maturity) initial,
  }) {
    return initial(amount, maturity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double amount, double maturity)? initial,
  }) {
    return initial?.call(amount, maturity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double amount, double maturity)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(amount, maturity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchOfferState {
  const factory _Initial({required double amount, required double maturity}) =
      _$_Initial;

  @override
  double get amount;
  @override
  double get maturity;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
