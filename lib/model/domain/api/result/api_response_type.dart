enum ApiResponseType {
  tokenMissing,
  tokenInvalid,
  tokenBlacklist,
  multipleDeviceLogin,
  serverMaintenance,
  authenticationFailed,
  serverError,
  timeout,
  forceUpdate,
  internetDisconnection,
  fail,
  success,
  unknown;

  static ApiResponseType fromCode(int code) {
    return ApiResponseType.values.firstWhere(
      (e) => e.code == code,
      orElse: () => ApiResponseType.unknown,
    );
  }
}

extension ApiResponseTypeExtension on ApiResponseType {
  bool Function(int)? get match => {
        ApiResponseType.tokenMissing: (x) => x == 499,
        ApiResponseType.multipleDeviceLogin: (x) => x == 498,
        ApiResponseType.tokenInvalid: (x) => x == 497,
        ApiResponseType.tokenBlacklist: (x) => x == 496,
        ApiResponseType.serverMaintenance: (x) => x == 503,
        ApiResponseType.authenticationFailed: (x) => x == 401,
        ApiResponseType.serverError: (x) => x >= 500 && x <= 599 && x != 503,
        ApiResponseType.timeout: (x) => x == -3,
        ApiResponseType.internetDisconnection: (x) => x == -2,
        ApiResponseType.success: (x) => x >= 200 && x <= 299,
        ApiResponseType.fail: (x) => x >= 400 && x <= 495,
        ApiResponseType.unknown: (x) =>
            (x >= -1 && x <= 199) || (x >= 300 && x <= 399),
      }[this];

  int? get code => {
        ApiResponseType.tokenMissing: 499,
        ApiResponseType.multipleDeviceLogin: 498,
        ApiResponseType.tokenInvalid: 497,
        ApiResponseType.tokenBlacklist: 496,
        ApiResponseType.serverMaintenance: 503,
        ApiResponseType.authenticationFailed: 401,
        ApiResponseType.serverError: 500,
        ApiResponseType.success: 200,
        ApiResponseType.fail: 400,
        ApiResponseType.timeout: -3,
        ApiResponseType.internetDisconnection: -2,
        ApiResponseType.unknown: -1
      }[this];
}
