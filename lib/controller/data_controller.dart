import 'package:get/get.dart';
import 'package:taskmanagement_app/services/service.dart';

class DataController extends GetxController{
  DataService service = DataService();
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  List<dynamic> _myData = [];
  List<dynamic> get myData => _myData;
  Future<void> getData() async {
    _isLoading = true;
    Response response = await service.getData();
    if(response.statusCode == 200){
      _myData = response.body;
      print("We got the data");
      update();  
    }else{
      print("We did not get any data");
    }
  }
}