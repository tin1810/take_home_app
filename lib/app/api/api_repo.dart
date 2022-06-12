import 'package:take_home_app/app/api/api_utils.dart';
import 'package:take_home_app/app/model/booking_model.dart';
import 'package:take_home_app/app/model/data_model.dart';

class ApiRepository {
  final ApiUtils _apiUtils = ApiUtils();
  ApiRepository._privateConstructor();
  static final ApiRepository instance = ApiRepository._privateConstructor();

  Future<DataModel> getData() async {
    return _apiUtils.getDataList();
  }

  Future<List<BookingModel>> getBooking() async {
    return _apiUtils.getBookingList();
  }
}
