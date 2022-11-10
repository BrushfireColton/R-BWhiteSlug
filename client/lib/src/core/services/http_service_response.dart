class HttpServiceResponse<T> {
  final T data;
  final Map<String, List<String>> headers;
  final String? statusMessage;
  final int? statusCode;

  HttpServiceResponse(
    this.data,
    this.headers,
    this.statusMessage,
    this.statusCode,
  );
}
