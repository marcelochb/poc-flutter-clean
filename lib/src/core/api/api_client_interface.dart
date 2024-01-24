abstract class IApiClient {
  Future get(String url, {Map<String, dynamic>? queryParameters});
  Future post(String url, {Map<String, dynamic>? body});
  Future put(String url, {Map<String, dynamic>? body});
  Future delete(String url, {Map<String, dynamic>? body});
}
