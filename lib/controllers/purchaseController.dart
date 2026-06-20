import 'package:get/get.dart';

class PurchaseController extends GetxController{
   List<Map<String, dynamic>> purchasedList = [
    {
      "lane": "M-109",
      "badges": ["G", "Y"],
      "distance": "328 km away",
      "seller": "LendCare Capital Inc",
      "image": "assets/car1.png",
      "title": "2021 Ford",
      "subTitle": "Edge SEL AWD",
      "mileage": "182,805 km",
      "price": "\$5,500",
      "auction": "Eastern Canada Auction",
      "date": "Purchased June 18, 2026",
    },
    {
      "lane": "",
      "badges": ["G", "Y"],
      "distance": "507 km away",
      "seller": "Spinelli Infinity",
      "image": "assets/car2.png",
      "title": "2014 Tesla",
      "subTitle": "Model S 4dr Sdn Performance",
      "mileage": "126,803 km",
      "price": "\$11,400",
      "auction": "Eastern Canada Auction",
      "date": "Purchased June 16, 2026",
    },
  ].obs;
}