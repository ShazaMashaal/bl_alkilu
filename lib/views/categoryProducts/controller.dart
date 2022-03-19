import 'package:get/get.dart';

class CategoryProductController extends GetxController{

  int? filterIndex;

  void changeFilterIndex(int index){
    filterIndex=index;
    update();
  }


}