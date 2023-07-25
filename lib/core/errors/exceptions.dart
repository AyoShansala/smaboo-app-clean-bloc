import 'package:dio/dio.dart';
import '../locales/locale_keys.g.dart';
import '../network/server_error_data.dart';


/// Throws when there's no shared pref data to fetch
class CacheException implements Exception {}

/// Exception for the HTTP requests from Dio
class ServerException implements Exception {
  late String errorMessage;
  late bool unexpectedError;
  ServerErrorData? data;

  ServerException({required this.errorMessage, required this.unexpectedError});

  /// Constructor for Dio package
  ServerException.fromDioError(DioError dioError) {
    data = ServerErrorData.fromDioError(dioError);
    switch (dioError.type) {
      case DioErrorType.cancel:
        errorMessage = LocaleKeys.errors_server_requestCancelled.tr();
        unexpectedError = false;
        break;
      case DioErrorType.connectTimeout:
        errorMessage = LocaleKeys.errors_server_connectionTimeOut.tr();
        unexpectedError = false;
        break;
      case DioErrorType.receiveTimeout:
        errorMessage = LocaleKeys.errors_server_receiveTimeout.tr();
        unexpectedError = false;
        break;
      case DioErrorType.sendTimeout:
        errorMessage = LocaleKeys.errors_server_sendTimeout.tr();
        unexpectedError = false;
        break;
      case DioErrorType.response:
        errorMessage = _handleStatusCode(dioError.response);
        break;
      case DioErrorType.other:
        if (dioError.message.contains('SocketException')) {
          errorMessage = LocaleKeys.errors_server_socketException.tr();
          unexpectedError = false;
          break;
        }
        errorMessage = LocaleKeys.errors_server_unexpectedError.tr();
        unexpectedError = true;
        break;
      default:
        errorMessage = LocaleKeys.errors_server_someThingWentWrong.tr();
        unexpectedError = true;
        break;
    }
  }

  String _handleStatusCode(Response? response) {
    int? statusCode = response?.statusCode;
    switch (statusCode) {
      case 400:
        unexpectedError = true;
        return LocaleKeys.errors_server_badRequest.tr();
      case 401:
        unexpectedError = false;
        return LocaleKeys.errors_server_authenticationFail.tr();
      case 403:
        unexpectedError = false;
        return LocaleKeys.errors_server_authenticatedUser.tr();
      case 404:
        unexpectedError = true;
        return LocaleKeys.errors_server_urlNotFound.tr();
      case 405:
        unexpectedError = true;
        return LocaleKeys.errors_server_invalidMethod.tr();
      case 410:
        unexpectedError = true;
        return LocaleKeys.errors_server_notFoundMail.tr();
      case 411:
        unexpectedError = true;
        return LocaleKeys.errors_server_companyNotFound.tr();
      case 415:
        unexpectedError = true;
        return LocaleKeys.errors_server_unsupportedMediaType.tr();
      case 420:
        unexpectedError = true;
        return LocaleKeys.errors_server_failedToVerifyEmail.tr();
      case 422:
        unexpectedError = false;
        return _getDataValidationErrorMessage(response) ?? LocaleKeys.errors_server_dataValidationFailed.tr();
      case 423:
        unexpectedError = true;
        return LocaleKeys.features_bookings_close_booking_alreadyClosed.tr();
      case 429:
        unexpectedError = true;
        return LocaleKeys.errors_server_toManyRequests.tr();
      case 500:
        unexpectedError = true;
        return LocaleKeys.errors_server_serverError.tr();
      case 433:
        unexpectedError = true;
        return LocaleKeys.errors_server_hasAnotherBooking.tr();
      case 434:
        unexpectedError = true;
        return LocaleKeys.errors_server_hasClosedTime.tr();
      default:
        unexpectedError = true;
        return LocaleKeys.errors_server_unhandledStatusCode.tr(args: [statusCode.toString()]);
    }
  }

  /// Generate Validation Errors (Status 422)
  String? _getDataValidationErrorMessage(Response? response) {
    try {
      DioResponseModel res = dioResponseModelFromJson(response?.data);
      // RescheduleBookingModel rescheduleBookingResponse = rescheduleBookingFromJson(response?.data);

      if (res.errors?.businessId != null) {
        return res.errors?.businessId?.first;
      }
      if (res.errors?.roleId != null) {
        return res.errors?.roleId?.first;
      }
      if (res.errors?.email != null) {
        return res.errors?.email?.first;
      }
      if (res.errors?.contactNumber != null) {
        return res.errors?.contactNumber?.first;
      }
      if (res.errors?.name != null) {
        return res.errors?.name?.first;
      }
      if (res.errors?.firebaseUid != null) {
        return res.errors?.firebaseUid?.first;
      }
      if (res.errors?.passwordIsAlreadyReset != null) {
        return res.errors?.passwordIsAlreadyReset?.first;
      }
      if (res.errors?.password != null) {
        return res.errors?.password?.first;
      }
      if (res.errors?.invalidDefaultPassword != null) {
        return res.errors?.invalidDefaultPassword?.first;
      }
      if (res.errors?.invalidCredentials != null) {
        return res.errors?.invalidCredentials?.first;
      }
      if (res.errors?.invalidWorkingHours != null) {
        return res.errors?.invalidWorkingHours?.first;
      }
      // if (res.errors?.assigneeFutureBookings != null) {
      //   return res.errors?.assigneeFutureBookings?.first;
      // }
      if (res.message != null || res.message != "") {
        return res.message;
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  @override
  String toString() {
    return 'ServerException{errorMessage: $errorMessage, unexpectedError: $unexpectedError, data: ${data.toString()}}';
  }
}

/// Use to throw exception when the user not grant device permissions
class NoPermission implements Exception {}

/// Use to throw platform related exceptions
class DeviceException implements Exception {
  final String message;

  const DeviceException({
    required this.message,
  });
}
