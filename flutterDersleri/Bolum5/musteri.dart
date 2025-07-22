//setter metotları ile private değişkenlere erişim sağlanabilir.

//getter ile setter metotları private değişkenlere erişim sağlar.
//farkları getter metotları sadece değişkeni okumak için kullanılırken, setter metotları değişkene veri atamak için kullanılır.
//@override //override ile toString metodunu geçersiz kılıyoruz.
//methodu silmek yerine ovverride yazmak şu anlama gelir: bu methodu geçersiz kılmak istiyorum.ama sonra da kullanmak istiyorum.
/*
  String toString() {
    return "Müşteri Adı: $ad, Soyadı: $soyad, Telefon: $telefon";
  }*/

class Musteri {
  int? _musteriNo;

  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }

  //bu fonksiyon aslında setter metodu gibi çalışıyor. Veri atamya yarıyor.
  void _musteriNoKontrol(int? no) {
    if (no == null) {
      print("Müşteri numarası boş.");
    } else if (no < 0) {
      print("Müşteri numarası negatif olamaz.");
    } else if (no > 10000) {
      print("Müşteri numarası çok büyük.");
    } else {
      _musteriNo = no;
    }
  }

  //setter versiyonu musteriNoKontrolün
  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
    print("Müşteri numarası 300'den büyük olmalıdır.");
  }

  void bilgileriYazdir() {
    if (_musteriNo == null) {
      print("Müşteri numarası boş.");
    } else {
      print("Müşteri numarası: $_musteriNo");
    }
  }

  //getter versiyonu //direkt süslü parantez ile de yazabiliriz.
  /*String get musteriNoSoyle {
    return "Müşteri numarası: $_musteriNo";
  }*/
  // ve bunu tek satırda da yazabiliriz.
   String get musteriNoSoyle => "Müşteri numarası: $_musteriNo";
}
