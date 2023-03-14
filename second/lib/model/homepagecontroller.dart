import 'package:get/get.dart';
import 'package:second/model/model.dart';

class HomePageController extends GetxController{

  List<Model> cardList=[];

  addToCard(Model model){
    cardList.add(model);
    update();
  }
  removeFromCard(int index){
    cardList.removeAt(index);
    update();
  }

  incrementQuantity(int index){
    cardList[index].count++;
    update();
  }

}