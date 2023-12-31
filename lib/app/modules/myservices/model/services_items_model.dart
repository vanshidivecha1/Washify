import 'package:get/get_rx/src/rx_types/rx_types.dart';

class ServicesItemModel {
  final String title;
  final String companyName;
  final String servicedByPersonName;
  final String dateTime;
  //final List<ServiceItemImageModel> imageModels;

  ServicesItemModel({
    required this.title,
    required this.companyName,
    required this.servicedByPersonName,
    required this.dateTime,
    //required this.imageModels,
  });
}

class ServiceItemImageModel {
  final String imagePath;

  ServiceItemImageModel({required this.imagePath});
}
