class ApiException implements Exception {
  final String _prefix;
  final String _msg;
  ApiException(this._prefix, this._msg);
  @override
  String toString() {
    return "$_prefix $_msg";
  }
}

class FetchDataException extends ApiException {
  FetchDataException(String message)
      : super(message, "Error During Communication: ");
}

class BadRequestException extends ApiException {
  BadRequestException(String message) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends ApiException {
  UnauthorisedException(String message) : super(message, "Unauthorised: ");
}

class InvalidInputException extends ApiException {
  InvalidInputException(String message) : super(message, "Invalid Input: ");
}
