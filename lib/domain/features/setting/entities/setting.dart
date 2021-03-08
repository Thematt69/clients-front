enum IpType { LOCALE, RESEAU, EXTERNE }

class Setting {
  String ip;

  String get protocole => "http://";
  String get racine => "/webService/public/api";
  String get url => protocole + ip + racine;

  String get passwordGallery => "thematt69";

  Setting({
    this.ip = "192.168.1.100",
  });

  bool get isLocal => ip.startsWith('127.') ? true : false;

  bool get isPrivate {
    // Classe C (192.168.0.0 <==> 192.168.255.255)
    if (ip.startsWith('192.168.'))
      return true;
    // Classe B (172.16.0.0 <==> 172.31.255.255)
    else if (ip.startsWith('172.') &&
        int.parse(ip.split('.')[1]) >= 16 &&
        int.parse(ip.split('.')[1]) <= 31)
      return true;
    // Classe A (10.0.0.0 <==> 10.255.255.255)
    else if (ip.startsWith('10.'))
      return true;
    else
      return false;
  }

  bool get isPublic => (!isLocal && !isPrivate && !isForbidden) ? true : false;

  bool get isForbidden {
    // Multicast (224.0.0.0 <==> 239.255.255.255)
    if (int.parse(ip.split('.')[0]) >= 224 &&
        int.parse(ip.split('.')[0]) <= 239)
      return true;
    // Réservées par l'IETF (240.0.0.0 <==> 255.255.255.255)
    else if (int.parse(ip.split('.')[0]) >= 240 &&
        int.parse(ip.split('.')[0]) <= 255)
      return true;
    // Réservé
    else if (ip == "0.0.0.0")
      return true;
    else
      return false;
  }
}
