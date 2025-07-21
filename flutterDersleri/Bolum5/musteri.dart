class Musteri {
  String ad;
  String soyad;
  String telefon;

  Musteri(this.ad, this.soyad, this.telefon);
  //setter metotları ile private değişkenlere erişim sağlanabilir.
  String get getAd => ad; // getter metotları ile private değişkenlere erişim sağlanabilir.
  String get getSoyad => soyad;
  String get getTelefon => telefon;
  set setAd(String ad) {
    this.ad = ad; // setter metotları ile private değişkenlere erişim sağlanabilir.
  }
  set setSoyad(String soyad) {
    this.soyad = soyad; // setter metotları ile private değişkenlere erişim sağlanabilir.
  }
  set setTelefon(String telefon) {
    this.telefon = telefon; // setter metotları ile private değişkenlere erişim sağlanabilir.
  }
  //getter ile setter metotları private değişkenlere erişim sağlar.
  //farkları getter metotları sadece değişkeni okumak için kullanılırken, setter metotları değişkene veri atamak için kullanılır.
  @override //override ile toString metodunu geçersiz kılıyoruz.
  //methodu silmek yerine ovverride yazmak şu anlama gelir: bu methodu geçersiz kılmak istiyorum.ama sonra da kullanmak istiyorum.
  String toString() {
    return "Müşteri Adı: $ad, Soyadı: $soyad, Telefon: $telefon";
  }
}