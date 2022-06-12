import 'package:get/get.dart';
import 'package:take_home_app/app/api/api_repo.dart';
import 'package:take_home_app/app/model/data_model.dart';
import 'package:take_home_app/app/service/service.dart';

class HomeController extends GetxController {
  late DataModel dataList;
  Rx<bool> isLoading = true.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // loadDataList();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void loadDataList() {
    ApiRepository.instance.getData().then((value) {
      isLoading.value = true;
      dataList = value;
    }).catchError((e) {
      isLoading.value = false;
    });
  }
}
