import 'package:get/get.dart';

class Env extends GetxService {
  // String ip = "127.0.0.1";
  String ip = "192.168.1.100";

  String get protocole => "http://";
  String get racine => "/webService/public/api";

  /// Adresse ip par défaut (localhost)
  String get url => protocole + ip + racine;
}
