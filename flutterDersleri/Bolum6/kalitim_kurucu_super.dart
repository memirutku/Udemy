void main(List<String> args) {
  Asker asker = Asker("Mustafa", 24);
  asker.selamla();
  Er er = Er(
    "Emir",
    25,
  ); // bu değerleri ilk normal sınıfın constructoruna gönderiyor. Oradan da super ile üst sınıfın constuructoruna gönderiyor.
  er.selamla();
  er.memleketDegistir("İstanbul");
}

class Asker {
  String isim = "";
  int yas = 0;
  String memleket = "Adana";
  Asker(this.isim, this.yas) {
    print("Asker yapıcı metodu çalıştı");
  }
  void selamla() {
    print("Merhaba adım $isim, yaşım $yas");
  }
}

class Er extends Asker {
  //extend lediğimizde ilk üsteki sınıfın yapıcı metodu çalışır. Ondan sonra kendi yapıcı metodu çalışır.

  Er(String ad, int yas) : super(ad, yas) {
    // bir şey yazmazsak burası hata veriyor çünkü üst sınıfın yapıcı metodu parametre alıyor.
    //super demek üst sınıfa eriş () ise kurucu constructoru tetikle oluyor.
    // Bu durumda üst sınıfın yapıcı metodunu çağırmamız gerekiyor.
    print("Er yapıcı metodu çalıştı");
  }

  void memleketDegistir(String yeniMemleket) {
    super.memleket =
        yeniMemleket; // super üst sınıfa git demek parantez olmadığı için direkt değişkenine erişiyoruz.
    print("Memleket değiştirildi: $yeniMemleket");
  }

  @override
  void selamla() {
    //super.selamla(); // üst sınıfın selamla metodunu çağırıyor ama biz kendimizinkini yazacağımız için bunu kullanmayız.
    print("Ben bir erim, adım $isim, yaşım $yas, memleketim $memleket");
  }
}
