enum IpType { LOCALE, RESEAU, EXTERNE }

class Setting {
  String ip;

  String get protocole => "http://";
  String get racine => "/webService/public/api";
  String get url => protocole + ip + racine;

  Setting({
    this.ip = "127.0.0.1",
  });
}
