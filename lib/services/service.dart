import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DataService extends GetConnect implements GetxService{

  Future<Response> getData()async{
    Response response= await get(
      "http://localhost:8082/gettasks",
      headers: {
        'Content-Type': 'application/json; charset=UTF-8'
      }
    );
    return response;
  }

  Future<Response> postData(dynamic body)async{
    Response response= await post(
      "http://localhost:8082/create",
      body,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8'
      }
    );
    return response;
  }
}