import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:nexteons_mechine_text/services/api_service.dart';

class HomeProvider extends ChangeNotifier{




getData(){
  Map<String,dynamic> data = {
    "statusArray": [1],
    "screenType": [],
    "responseFormat": [],
    "globalGalleryIds": [],
    "categoryIds": [],
    "docTypes": [],
    "types": [],
    "limit": 10,
    "skip": 0,
    "searchingText": ""
  };

  var response = ApiService.fetchData(data);

}

}