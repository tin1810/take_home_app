import 'package:dio/dio.dart';
import 'package:take_home_app/app/model/booking_model.dart';
import 'package:take_home_app/app/model/data_model.dart';

ApiUtils apiUtils = ApiUtils();

class ApiUtils {
  final Dio _dio = Dio();
  ApiUtils() {
    _dio.options.connectTimeout = 20000;
    _dio.options.receiveTimeout = 20000;
    _dio.options.sendTimeout = 20000;
    _dio.options.headers['Content-Type'] = 'application/json; charset=UTF-8';
    _dio.options.headers['Accept'] = 'application/json; charset=UTF-8';
  }

  Future<DataModel> getDataList() async {
    String url = "http://52.77.88.92:3000/home/getPrices";
    try {
      final response = await _dio.get(url);
      final array = response.data['prices'];
      print("array $array");
      return DataModel.fromJson(array);
    } on Exception catch (e) {
      throw Exception("Something went wrong");
    }
  }

  Future<List<BookingModel>> getBookingList() async {
    String url =
        "https://406860e9-1877-4509-a313-3e050c0b704c.mock.pstmn.io/appointments/getSlots?date=2022-06-15";
    try {
      final response = await _dio.get(url);
      final array = response.data['slots'] as List;

      print("array $array");
      return array.map((jsonObj) => BookingModel.fromJson(jsonObj)).toList();
    } on Exception catch (e) {
      throw Exception("Something went wrong");
    }
  }
}
