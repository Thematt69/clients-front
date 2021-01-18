class RestApiResponse<T> {
  final String message;
  final T data;

  RestApiResponse({
    this.message,
    this.data,
  });
}
