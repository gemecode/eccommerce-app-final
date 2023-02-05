import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:final_project/core/class/statusrequest.dart';
import 'package:final_project/core/function/checkinternet.dart';
import 'package:http/http.dart' as http;


// String _basicAuth = 'Basic ${base64Encode(utf8.encode(
//     'gemecode:gemecode12345'))}';
//
// Map<String, String> myheaders = {
//   'authorization': _basicAuth
// };


class Crud{


  Future<Either<StatusRequest , Map>> postData(String linkUrl, Map data) async{

    try {
      if (await checkInternet()) {


        print("############### linkUrl = $linkUrl");
        print("############### data = $data");
        var response = await http.post(Uri.parse(linkUrl), body: data);
        print("############### response = $response");

        if (response.statusCode == 200 || response.statusCode == 201) {
          print("############## statusCode = ${response.statusCode}");
          Map responseBody = jsonDecode(response.body);
          print("############## responseBody = $responseBody");
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }


      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch(_){
      return const Left(StatusRequest.serverException);
    }

  }


}