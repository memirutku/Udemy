//burada ki amacımız bizim kullanıcının sadece bunu kullanması. kullanıcı adı ve şifreyi öğrenmemesi.
// private değişkenlere erişim için getter ve setter metotları kullanılır.
// private değişkenlere erişim için _ işareti kullanılır.

import "dart:math"; // Random sınıfını kullanmak için import ediyoruz.

class VeritabaniIslemleri {
  String _kullaniciAdi =
      "admin"; //sınıfın içinde tanımlı değişkenleri sınıfın her yerinden erişebiliriz.
  String _sifre = "123456";

  bool baglan() {
    if (!_internetVarMi()) {
      print("İnternet bağlantısı yok, veritabanına bağlanılamadı.");
      return false;
    } else {
      print("İnternet bağlantısı var, veritabanına bağlanılıyor...");
      // private değişkenlere erişim
      if (_kullaniciAdi == "admin" && _sifre == "123456") {
        print("Veritabanına bağlanıldı.");
        return true;
      } else {
        print("Bağlantı başarısız.");
        return false;
      }
    }
  }

  VeritabaniIslemleri();

  VeritabaniIslemleri.loginWithNameAndPassword(String kullaniciAdi,int sifre) {
    if (kullaniciAdi == _kullaniciAdi && sifre == _sifre) {
      print("Giriş başarılı.");
    } else {
      print("Kullanıcı adı veya şifre yanlış.");
    }
  }

  bool _internetVarMi() {
    // fonksiyonları da private yapabiliriz. Eğer o fonksiyonu kullanıcı çağırmasını istemiyorsak.
    if (Random().nextBool()) {
      print("İnternet bağlantısı var.");
      return true;
    } else {
      print("İnternet bağlantısı yok.");
      return false;
    }
  }
}
