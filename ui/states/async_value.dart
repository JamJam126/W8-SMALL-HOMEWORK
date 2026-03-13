enum AsyncState { loading, error, success }

class AsyncValue<T> {
  final AsyncState state;
  final T? data;
  final Object? error;

  const AsyncValue._({
    required this.state,
    this.data,
    this.error,
  });

  const AsyncValue.loading() : this._(state: AsyncState.loading);

  const AsyncValue.error(Object error)
      : this._(state: AsyncState.error, error: error);

  const AsyncValue.success(T data)
      : this._(state: AsyncState.success, data: data);

  bool get isLoading => state == AsyncState.loading;
  bool get hasError => state == AsyncState.error;
  bool get hasData => state == AsyncState.success;
}
