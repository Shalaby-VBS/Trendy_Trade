// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCartLoading,
    required TResult Function(List<GetCartModel?>? cartItems) getCartSuccess,
    required TResult Function(ErrorHandler errorHandler) getCartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCartLoading,
    TResult? Function(List<GetCartModel?>? cartItems)? getCartSuccess,
    TResult? Function(ErrorHandler errorHandler)? getCartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCartLoading,
    TResult Function(List<GetCartModel?>? cartItems)? getCartSuccess,
    TResult Function(ErrorHandler errorHandler)? getCartError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCartLoading value) getCartLoading,
    required TResult Function(GetCartSuccess value) getCartSuccess,
    required TResult Function(GetCartError value) getCartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCartLoading value)? getCartLoading,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
    TResult? Function(GetCartError value)? getCartError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCartLoading value)? getCartLoading,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    TResult Function(GetCartError value)? getCartError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCartLoading,
    required TResult Function(List<GetCartModel?>? cartItems) getCartSuccess,
    required TResult Function(ErrorHandler errorHandler) getCartError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCartLoading,
    TResult? Function(List<GetCartModel?>? cartItems)? getCartSuccess,
    TResult? Function(ErrorHandler errorHandler)? getCartError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCartLoading,
    TResult Function(List<GetCartModel?>? cartItems)? getCartSuccess,
    TResult Function(ErrorHandler errorHandler)? getCartError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCartLoading value) getCartLoading,
    required TResult Function(GetCartSuccess value) getCartSuccess,
    required TResult Function(GetCartError value) getCartError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCartLoading value)? getCartLoading,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
    TResult? Function(GetCartError value)? getCartError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCartLoading value)? getCartLoading,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    TResult Function(GetCartError value)? getCartError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetCartLoadingImplCopyWith<$Res> {
  factory _$$GetCartLoadingImplCopyWith(_$GetCartLoadingImpl value,
          $Res Function(_$GetCartLoadingImpl) then) =
      __$$GetCartLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartLoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetCartLoadingImpl>
    implements _$$GetCartLoadingImplCopyWith<$Res> {
  __$$GetCartLoadingImplCopyWithImpl(
      _$GetCartLoadingImpl _value, $Res Function(_$GetCartLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCartLoadingImpl implements GetCartLoading {
  const _$GetCartLoadingImpl();

  @override
  String toString() {
    return 'CartState.getCartLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCartLoading,
    required TResult Function(List<GetCartModel?>? cartItems) getCartSuccess,
    required TResult Function(ErrorHandler errorHandler) getCartError,
  }) {
    return getCartLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCartLoading,
    TResult? Function(List<GetCartModel?>? cartItems)? getCartSuccess,
    TResult? Function(ErrorHandler errorHandler)? getCartError,
  }) {
    return getCartLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCartLoading,
    TResult Function(List<GetCartModel?>? cartItems)? getCartSuccess,
    TResult Function(ErrorHandler errorHandler)? getCartError,
    required TResult orElse(),
  }) {
    if (getCartLoading != null) {
      return getCartLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCartLoading value) getCartLoading,
    required TResult Function(GetCartSuccess value) getCartSuccess,
    required TResult Function(GetCartError value) getCartError,
  }) {
    return getCartLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCartLoading value)? getCartLoading,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
    TResult? Function(GetCartError value)? getCartError,
  }) {
    return getCartLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCartLoading value)? getCartLoading,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    TResult Function(GetCartError value)? getCartError,
    required TResult orElse(),
  }) {
    if (getCartLoading != null) {
      return getCartLoading(this);
    }
    return orElse();
  }
}

abstract class GetCartLoading implements CartState {
  const factory GetCartLoading() = _$GetCartLoadingImpl;
}

/// @nodoc
abstract class _$$GetCartSuccessImplCopyWith<$Res> {
  factory _$$GetCartSuccessImplCopyWith(_$GetCartSuccessImpl value,
          $Res Function(_$GetCartSuccessImpl) then) =
      __$$GetCartSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GetCartModel?>? cartItems});
}

/// @nodoc
class __$$GetCartSuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetCartSuccessImpl>
    implements _$$GetCartSuccessImplCopyWith<$Res> {
  __$$GetCartSuccessImplCopyWithImpl(
      _$GetCartSuccessImpl _value, $Res Function(_$GetCartSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = freezed,
  }) {
    return _then(_$GetCartSuccessImpl(
      freezed == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<GetCartModel?>?,
    ));
  }
}

/// @nodoc

class _$GetCartSuccessImpl implements GetCartSuccess {
  const _$GetCartSuccessImpl(final List<GetCartModel?>? cartItems)
      : _cartItems = cartItems;

  final List<GetCartModel?>? _cartItems;
  @override
  List<GetCartModel?>? get cartItems {
    final value = _cartItems;
    if (value == null) return null;
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartState.getCartSuccess(cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartSuccessImplCopyWith<_$GetCartSuccessImpl> get copyWith =>
      __$$GetCartSuccessImplCopyWithImpl<_$GetCartSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCartLoading,
    required TResult Function(List<GetCartModel?>? cartItems) getCartSuccess,
    required TResult Function(ErrorHandler errorHandler) getCartError,
  }) {
    return getCartSuccess(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCartLoading,
    TResult? Function(List<GetCartModel?>? cartItems)? getCartSuccess,
    TResult? Function(ErrorHandler errorHandler)? getCartError,
  }) {
    return getCartSuccess?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCartLoading,
    TResult Function(List<GetCartModel?>? cartItems)? getCartSuccess,
    TResult Function(ErrorHandler errorHandler)? getCartError,
    required TResult orElse(),
  }) {
    if (getCartSuccess != null) {
      return getCartSuccess(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCartLoading value) getCartLoading,
    required TResult Function(GetCartSuccess value) getCartSuccess,
    required TResult Function(GetCartError value) getCartError,
  }) {
    return getCartSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCartLoading value)? getCartLoading,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
    TResult? Function(GetCartError value)? getCartError,
  }) {
    return getCartSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCartLoading value)? getCartLoading,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    TResult Function(GetCartError value)? getCartError,
    required TResult orElse(),
  }) {
    if (getCartSuccess != null) {
      return getCartSuccess(this);
    }
    return orElse();
  }
}

abstract class GetCartSuccess implements CartState {
  const factory GetCartSuccess(final List<GetCartModel?>? cartItems) =
      _$GetCartSuccessImpl;

  List<GetCartModel?>? get cartItems;
  @JsonKey(ignore: true)
  _$$GetCartSuccessImplCopyWith<_$GetCartSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCartErrorImplCopyWith<$Res> {
  factory _$$GetCartErrorImplCopyWith(
          _$GetCartErrorImpl value, $Res Function(_$GetCartErrorImpl) then) =
      __$$GetCartErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$GetCartErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetCartErrorImpl>
    implements _$$GetCartErrorImplCopyWith<$Res> {
  __$$GetCartErrorImplCopyWithImpl(
      _$GetCartErrorImpl _value, $Res Function(_$GetCartErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$GetCartErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$GetCartErrorImpl implements GetCartError {
  const _$GetCartErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'CartState.getCartError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartErrorImplCopyWith<_$GetCartErrorImpl> get copyWith =>
      __$$GetCartErrorImplCopyWithImpl<_$GetCartErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getCartLoading,
    required TResult Function(List<GetCartModel?>? cartItems) getCartSuccess,
    required TResult Function(ErrorHandler errorHandler) getCartError,
  }) {
    return getCartError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getCartLoading,
    TResult? Function(List<GetCartModel?>? cartItems)? getCartSuccess,
    TResult? Function(ErrorHandler errorHandler)? getCartError,
  }) {
    return getCartError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getCartLoading,
    TResult Function(List<GetCartModel?>? cartItems)? getCartSuccess,
    TResult Function(ErrorHandler errorHandler)? getCartError,
    required TResult orElse(),
  }) {
    if (getCartError != null) {
      return getCartError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetCartLoading value) getCartLoading,
    required TResult Function(GetCartSuccess value) getCartSuccess,
    required TResult Function(GetCartError value) getCartError,
  }) {
    return getCartError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetCartLoading value)? getCartLoading,
    TResult? Function(GetCartSuccess value)? getCartSuccess,
    TResult? Function(GetCartError value)? getCartError,
  }) {
    return getCartError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetCartLoading value)? getCartLoading,
    TResult Function(GetCartSuccess value)? getCartSuccess,
    TResult Function(GetCartError value)? getCartError,
    required TResult orElse(),
  }) {
    if (getCartError != null) {
      return getCartError(this);
    }
    return orElse();
  }
}

abstract class GetCartError implements CartState {
  const factory GetCartError(final ErrorHandler errorHandler) =
      _$GetCartErrorImpl;

  ErrorHandler get errorHandler;
  @JsonKey(ignore: true)
  _$$GetCartErrorImplCopyWith<_$GetCartErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
