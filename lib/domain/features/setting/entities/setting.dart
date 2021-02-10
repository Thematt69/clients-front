enum IpType { LOCALE, RESEAU, EXTERNE }

class Setting {
  String ip;

  String get protocole => "http://";
  String get racine => "/webService/public/api";
  String get url => protocole + ip + racine;

  String get passwordGallery => "thematt69";

  Setting({
    this.ip = "127.0.0.1",
  });
}
