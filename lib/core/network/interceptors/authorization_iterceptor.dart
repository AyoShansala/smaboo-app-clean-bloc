import 'dart:developer';
import 'package:dio/dio.dart';



// Request methods PUT, POST, PATCH, DELETE needs access token,
// which needs to be passed with "Authorization" header as Bearer token.
class AuthorizationInterceptor extends Interceptor {

  AuthenticationBloc authBloc;

  AuthorizationInterceptor({
    required this.authBloc,
  });

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // adds the access-token with the header
    options.headers['Authorization'] = 'Bearer ${authBloc.state.token}';
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('onResponse called $response\n');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if(err.response?.statusCode == 401) {
      authBloc.add(SessionExpired());
    }
    super.onError(err, handler);
  }

}