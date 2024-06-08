class ApiUrls {
  // MARK: - ✏️ Base Url.
  static const String baseUrl = "http://omarahmedx14-001-site1.dtempurl.com/";

  // MARK: - End-Points.
  static const String login = "api/Account/login";
  static const String register = "api/Account/register";
  static const String products = "api/Product";
}

class ApiErrors {
  static const String badRequest = "Bad Request Error";
  static const String noContent = "No Content Error";
  static const String forbidden = "Forbidden Error";
  static const String unauthorized = "Unauthorized Error";
  static const String notFound = "Not Found Error";
  static const String conflict = "Conflict Error";
  static const String internalServerError = "Internal Server Error";
  static const String defaultError = "Unknown Error";
  static const String sendTimeout = "Send Timeout Error";
  static const String receiveTimeout = "Receive Timeout Error";
  static const String cacheError = "Cache Error";
  static const String retryAgain = "Retry Again Message";
  static const String success = "Success";
  static const String cancel = "Cancel";
  static const String connectionTimeout = "Connection Timeout Error";
  static const String noInternetConnection = "No Internet Connection Error";
}
