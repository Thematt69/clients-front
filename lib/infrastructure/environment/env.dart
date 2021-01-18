import 'package:get/get.dart';

import 'env_type.dart';

class Env extends GetxService {
  // ┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑
  // ┃ Environment                                                     ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙
  EnvType kEnv = EnvType.dev();

  String kDefaultUsername = "";
  String kDefaultPassword = "";

  bool get showDebugBanner => kEnv != EnvType.prod();

  // ┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑
  // ┃ AppKeys                                                         ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙

  String get kAppKey {
    return kEnv.when(
      dev: () => '',
      rd: () => '',
      rc: () => '',
      prod: () => '',
    );
  }

  // ┍━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┑
  // ┃ Base Urls                                                       ┃
  // ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┙

  String get kBaseUrl {
    return kEnv.when(
      dev: () => 'http://localhost/webService/public/api/',
      rd: () => '',
      rc: () => '',
      prod: () => '',
    );
  }

  String get kAuthBaseUrl {
    return kEnv.when(
      dev: () => '',
      rd: () => '',
      rc: () => '',
      prod: () => '',
    );
  }
}
