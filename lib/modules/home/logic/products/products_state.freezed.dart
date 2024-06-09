// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productsList) success,
    required TResult Function(ErrorHandler errorHandler) error,
    required TResult Function() loadingCategories,
    required TResult Function(List<CategoriesResponseModel> categoriesList)
        successCategories,
    required TResult Function(ErrorHandler errorHandler) errorCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productsList)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
    TResult? Function()? loadingCategories,
    TResult? Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult? Function(ErrorHandler errorHandler)? errorCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productsList)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    TResult Function()? loadingCategories,
    TResult Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult Function(ErrorHandler errorHandler)? errorCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(LoadingCategories value) loadingCategories,
    required TResult Function(SuccessCategories value) successCategories,
    required TResult Function(ErrorCategories value) errorCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(LoadingCategories value)? loadingCategories,
    TResult? Function(SuccessCategories value)? successCategories,
    TResult? Function(ErrorCategories value)? errorCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(LoadingCategories value)? loadingCategories,
    TResult Function(SuccessCategories value)? successCategories,
    TResult Function(ErrorCategories value)? errorCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

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
    extends _$ProductsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ProductsState.initial()';
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
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productsList) success,
    required TResult Function(ErrorHandler errorHandler) error,
    required TResult Function() loadingCategories,
    required TResult Function(List<CategoriesResponseModel> categoriesList)
        successCategories,
    required TResult Function(ErrorHandler errorHandler) errorCategories,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productsList)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
    TResult? Function()? loadingCategories,
    TResult? Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult? Function(ErrorHandler errorHandler)? errorCategories,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productsList)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    TResult Function()? loadingCategories,
    TResult Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult Function(ErrorHandler errorHandler)? errorCategories,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(LoadingCategories value) loadingCategories,
    required TResult Function(SuccessCategories value) successCategories,
    required TResult Function(ErrorCategories value) errorCategories,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(LoadingCategories value)? loadingCategories,
    TResult? Function(SuccessCategories value)? successCategories,
    TResult? Function(ErrorCategories value)? errorCategories,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(LoadingCategories value)? loadingCategories,
    TResult Function(SuccessCategories value)? successCategories,
    TResult Function(ErrorCategories value)? errorCategories,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProductsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productsList) success,
    required TResult Function(ErrorHandler errorHandler) error,
    required TResult Function() loadingCategories,
    required TResult Function(List<CategoriesResponseModel> categoriesList)
        successCategories,
    required TResult Function(ErrorHandler errorHandler) errorCategories,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productsList)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
    TResult? Function()? loadingCategories,
    TResult? Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult? Function(ErrorHandler errorHandler)? errorCategories,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productsList)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    TResult Function()? loadingCategories,
    TResult Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult Function(ErrorHandler errorHandler)? errorCategories,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(LoadingCategories value) loadingCategories,
    required TResult Function(SuccessCategories value) successCategories,
    required TResult Function(ErrorCategories value) errorCategories,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(LoadingCategories value)? loadingCategories,
    TResult? Function(SuccessCategories value)? successCategories,
    TResult? Function(ErrorCategories value)? errorCategories,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(LoadingCategories value)? loadingCategories,
    TResult Function(SuccessCategories value)? successCategories,
    TResult Function(ErrorCategories value)? errorCategories,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ProductsState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> productsList});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsList = null,
  }) {
    return _then(_$SuccessImpl(
      null == productsList
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(final List<ProductModel> productsList)
      : _productsList = productsList;

  final List<ProductModel> _productsList;
  @override
  List<ProductModel> get productsList {
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsList);
  }

  @override
  String toString() {
    return 'ProductsState.success(productsList: $productsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productsList) success,
    required TResult Function(ErrorHandler errorHandler) error,
    required TResult Function() loadingCategories,
    required TResult Function(List<CategoriesResponseModel> categoriesList)
        successCategories,
    required TResult Function(ErrorHandler errorHandler) errorCategories,
  }) {
    return success(productsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productsList)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
    TResult? Function()? loadingCategories,
    TResult? Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult? Function(ErrorHandler errorHandler)? errorCategories,
  }) {
    return success?.call(productsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productsList)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    TResult Function()? loadingCategories,
    TResult Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult Function(ErrorHandler errorHandler)? errorCategories,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(productsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(LoadingCategories value) loadingCategories,
    required TResult Function(SuccessCategories value) successCategories,
    required TResult Function(ErrorCategories value) errorCategories,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(LoadingCategories value)? loadingCategories,
    TResult? Function(SuccessCategories value)? successCategories,
    TResult? Function(ErrorCategories value)? errorCategories,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(LoadingCategories value)? loadingCategories,
    TResult Function(SuccessCategories value)? successCategories,
    TResult Function(ErrorCategories value)? errorCategories,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ProductsState {
  const factory Success(final List<ProductModel> productsList) = _$SuccessImpl;

  List<ProductModel> get productsList;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$ErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'ProductsState.error(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productsList) success,
    required TResult Function(ErrorHandler errorHandler) error,
    required TResult Function() loadingCategories,
    required TResult Function(List<CategoriesResponseModel> categoriesList)
        successCategories,
    required TResult Function(ErrorHandler errorHandler) errorCategories,
  }) {
    return error(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productsList)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
    TResult? Function()? loadingCategories,
    TResult? Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult? Function(ErrorHandler errorHandler)? errorCategories,
  }) {
    return error?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productsList)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    TResult Function()? loadingCategories,
    TResult Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult Function(ErrorHandler errorHandler)? errorCategories,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(LoadingCategories value) loadingCategories,
    required TResult Function(SuccessCategories value) successCategories,
    required TResult Function(ErrorCategories value) errorCategories,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(LoadingCategories value)? loadingCategories,
    TResult? Function(SuccessCategories value)? successCategories,
    TResult? Function(ErrorCategories value)? errorCategories,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(LoadingCategories value)? loadingCategories,
    TResult Function(SuccessCategories value)? successCategories,
    TResult Function(ErrorCategories value)? errorCategories,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ProductsState {
  const factory Error(final ErrorHandler errorHandler) = _$ErrorImpl;

  ErrorHandler get errorHandler;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCategoriesImplCopyWith<$Res> {
  factory _$$LoadingCategoriesImplCopyWith(_$LoadingCategoriesImpl value,
          $Res Function(_$LoadingCategoriesImpl) then) =
      __$$LoadingCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCategoriesImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$LoadingCategoriesImpl>
    implements _$$LoadingCategoriesImplCopyWith<$Res> {
  __$$LoadingCategoriesImplCopyWithImpl(_$LoadingCategoriesImpl _value,
      $Res Function(_$LoadingCategoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCategoriesImpl implements LoadingCategories {
  const _$LoadingCategoriesImpl();

  @override
  String toString() {
    return 'ProductsState.loadingCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productsList) success,
    required TResult Function(ErrorHandler errorHandler) error,
    required TResult Function() loadingCategories,
    required TResult Function(List<CategoriesResponseModel> categoriesList)
        successCategories,
    required TResult Function(ErrorHandler errorHandler) errorCategories,
  }) {
    return loadingCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productsList)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
    TResult? Function()? loadingCategories,
    TResult? Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult? Function(ErrorHandler errorHandler)? errorCategories,
  }) {
    return loadingCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productsList)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    TResult Function()? loadingCategories,
    TResult Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult Function(ErrorHandler errorHandler)? errorCategories,
    required TResult orElse(),
  }) {
    if (loadingCategories != null) {
      return loadingCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(LoadingCategories value) loadingCategories,
    required TResult Function(SuccessCategories value) successCategories,
    required TResult Function(ErrorCategories value) errorCategories,
  }) {
    return loadingCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(LoadingCategories value)? loadingCategories,
    TResult? Function(SuccessCategories value)? successCategories,
    TResult? Function(ErrorCategories value)? errorCategories,
  }) {
    return loadingCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(LoadingCategories value)? loadingCategories,
    TResult Function(SuccessCategories value)? successCategories,
    TResult Function(ErrorCategories value)? errorCategories,
    required TResult orElse(),
  }) {
    if (loadingCategories != null) {
      return loadingCategories(this);
    }
    return orElse();
  }
}

abstract class LoadingCategories implements ProductsState {
  const factory LoadingCategories() = _$LoadingCategoriesImpl;
}

/// @nodoc
abstract class _$$SuccessCategoriesImplCopyWith<$Res> {
  factory _$$SuccessCategoriesImplCopyWith(_$SuccessCategoriesImpl value,
          $Res Function(_$SuccessCategoriesImpl) then) =
      __$$SuccessCategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CategoriesResponseModel> categoriesList});
}

/// @nodoc
class __$$SuccessCategoriesImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$SuccessCategoriesImpl>
    implements _$$SuccessCategoriesImplCopyWith<$Res> {
  __$$SuccessCategoriesImplCopyWithImpl(_$SuccessCategoriesImpl _value,
      $Res Function(_$SuccessCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesList = null,
  }) {
    return _then(_$SuccessCategoriesImpl(
      null == categoriesList
          ? _value._categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<CategoriesResponseModel>,
    ));
  }
}

/// @nodoc

class _$SuccessCategoriesImpl implements SuccessCategories {
  const _$SuccessCategoriesImpl(
      final List<CategoriesResponseModel> categoriesList)
      : _categoriesList = categoriesList;

  final List<CategoriesResponseModel> _categoriesList;
  @override
  List<CategoriesResponseModel> get categoriesList {
    if (_categoriesList is EqualUnmodifiableListView) return _categoriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesList);
  }

  @override
  String toString() {
    return 'ProductsState.successCategories(categoriesList: $categoriesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCategoriesImpl &&
            const DeepCollectionEquality()
                .equals(other._categoriesList, _categoriesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoriesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCategoriesImplCopyWith<_$SuccessCategoriesImpl> get copyWith =>
      __$$SuccessCategoriesImplCopyWithImpl<_$SuccessCategoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productsList) success,
    required TResult Function(ErrorHandler errorHandler) error,
    required TResult Function() loadingCategories,
    required TResult Function(List<CategoriesResponseModel> categoriesList)
        successCategories,
    required TResult Function(ErrorHandler errorHandler) errorCategories,
  }) {
    return successCategories(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productsList)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
    TResult? Function()? loadingCategories,
    TResult? Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult? Function(ErrorHandler errorHandler)? errorCategories,
  }) {
    return successCategories?.call(categoriesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productsList)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    TResult Function()? loadingCategories,
    TResult Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult Function(ErrorHandler errorHandler)? errorCategories,
    required TResult orElse(),
  }) {
    if (successCategories != null) {
      return successCategories(categoriesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(LoadingCategories value) loadingCategories,
    required TResult Function(SuccessCategories value) successCategories,
    required TResult Function(ErrorCategories value) errorCategories,
  }) {
    return successCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(LoadingCategories value)? loadingCategories,
    TResult? Function(SuccessCategories value)? successCategories,
    TResult? Function(ErrorCategories value)? errorCategories,
  }) {
    return successCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(LoadingCategories value)? loadingCategories,
    TResult Function(SuccessCategories value)? successCategories,
    TResult Function(ErrorCategories value)? errorCategories,
    required TResult orElse(),
  }) {
    if (successCategories != null) {
      return successCategories(this);
    }
    return orElse();
  }
}

abstract class SuccessCategories implements ProductsState {
  const factory SuccessCategories(
          final List<CategoriesResponseModel> categoriesList) =
      _$SuccessCategoriesImpl;

  List<CategoriesResponseModel> get categoriesList;
  @JsonKey(ignore: true)
  _$$SuccessCategoriesImplCopyWith<_$SuccessCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCategoriesImplCopyWith<$Res> {
  factory _$$ErrorCategoriesImplCopyWith(_$ErrorCategoriesImpl value,
          $Res Function(_$ErrorCategoriesImpl) then) =
      __$$ErrorCategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$ErrorCategoriesImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ErrorCategoriesImpl>
    implements _$$ErrorCategoriesImplCopyWith<$Res> {
  __$$ErrorCategoriesImplCopyWithImpl(
      _$ErrorCategoriesImpl _value, $Res Function(_$ErrorCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$ErrorCategoriesImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$ErrorCategoriesImpl implements ErrorCategories {
  const _$ErrorCategoriesImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'ProductsState.errorCategories(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCategoriesImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCategoriesImplCopyWith<_$ErrorCategoriesImpl> get copyWith =>
      __$$ErrorCategoriesImplCopyWithImpl<_$ErrorCategoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductModel> productsList) success,
    required TResult Function(ErrorHandler errorHandler) error,
    required TResult Function() loadingCategories,
    required TResult Function(List<CategoriesResponseModel> categoriesList)
        successCategories,
    required TResult Function(ErrorHandler errorHandler) errorCategories,
  }) {
    return errorCategories(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductModel> productsList)? success,
    TResult? Function(ErrorHandler errorHandler)? error,
    TResult? Function()? loadingCategories,
    TResult? Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult? Function(ErrorHandler errorHandler)? errorCategories,
  }) {
    return errorCategories?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductModel> productsList)? success,
    TResult Function(ErrorHandler errorHandler)? error,
    TResult Function()? loadingCategories,
    TResult Function(List<CategoriesResponseModel> categoriesList)?
        successCategories,
    TResult Function(ErrorHandler errorHandler)? errorCategories,
    required TResult orElse(),
  }) {
    if (errorCategories != null) {
      return errorCategories(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(LoadingCategories value) loadingCategories,
    required TResult Function(SuccessCategories value) successCategories,
    required TResult Function(ErrorCategories value) errorCategories,
  }) {
    return errorCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(LoadingCategories value)? loadingCategories,
    TResult? Function(SuccessCategories value)? successCategories,
    TResult? Function(ErrorCategories value)? errorCategories,
  }) {
    return errorCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(LoadingCategories value)? loadingCategories,
    TResult Function(SuccessCategories value)? successCategories,
    TResult Function(ErrorCategories value)? errorCategories,
    required TResult orElse(),
  }) {
    if (errorCategories != null) {
      return errorCategories(this);
    }
    return orElse();
  }
}

abstract class ErrorCategories implements ProductsState {
  const factory ErrorCategories(final ErrorHandler errorHandler) =
      _$ErrorCategoriesImpl;

  ErrorHandler get errorHandler;
  @JsonKey(ignore: true)
  _$$ErrorCategoriesImplCopyWith<_$ErrorCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
