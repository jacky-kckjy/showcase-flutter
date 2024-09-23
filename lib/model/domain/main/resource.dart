import '../api/result/api_error.dart';
import '../api/result/api_status.dart';

class Resource<T> {
  final ApiStatus status;
  final T? data;
  final ApiError? error;

  Resource(this.status, {this.data, this.error});
}
