void main(List<String> args) {
  Kisi kisi = Kisi("Ali", 30);
}

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas) {
    print("Kisi yapıcı metodu çalıştı");
  }

  void selamla() {
    print("Merhaba, ben $isim, yaşım $yas");
  }
}


class Calisan extends Kisi {
  String departman;

  Calisan(String isim, int yas, this.departman) : super(isim, yas) {
    print("Calisan yapıcı metodu çalıştı");
  }

  @override
  void selamla() {
    print("Merhaba, ben $isim, yaşım $yas ve departmanım $departman");
  }
}