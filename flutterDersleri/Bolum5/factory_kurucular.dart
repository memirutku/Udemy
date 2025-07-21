void main(List<String> args) {
  Ogrenci mustafa = Ogrenci(1923, "Mustafa Kemal Atatürk");



  int toplamSonucu = toplam();
  print("Toplam sonucu: $toplamSonucu");
}

int toplam() {
  return 0;
}

class Ogrenci {
  int id =0;
  String ad ="";

  //Kurucu  ve isimlendirilmiş kurucularde return yazılmaz.
  //ama yazmasak da return yapmış oluyoruz.
  Ogrenci(this.id,this.ad) // Kurucu metot ile id ve ad değişkenlerini atıyoruz.
  {
    print("Ogrenci sınıfından bir nesne oluşturuldu.");
    print("Öğrenci ID: $id}, Ad: $ad}");
 // kurucu metot içinde if kullanabiliriz.
    if (id <= 0) {
      print("Geçersiz ID değeri.");
    } else {
      print("Geçerli ID değeri.");
    }
  }

  Ogrenci.idSiz(this.ad) {
    // İsimlendirilmiş kurucu metot
    print("İsimlendirilmiş kurucu metot ile ad değişkenine değer atandı.");
    print("Öğrenci Ad: $ad");
    // bunda da if kullanabiliriz.
    if (ad.isEmpty) {
      print("Ad bilgisi boş.");
    } else {
      print("Ad bilgisi: $ad");
    }
  }



//ama yine de return kullanmak istiyorsak factory kurucu metot kullanabiliriz.
  factory Ogrenci.factoryKurucu(int id, String ad) { // factoryKurucu ismini örnek için yazdık farklı olabilir.
 // if de kullanabiliriz.
 if (id <= 0) {
      print("Geçersiz ID değeri.");
      return Ogrenci(id,ad); // Eğer ID geçersiz ise isimlendirilmiş kurucu metot ile nesne oluşturuyoruz.
    }
    else {
      print("Geçerli ID değeri.");
      return Ogrenci.idSiz(ad); // Eğer ID geçerli ise isimlendirilmiş kurucu metot ile nesne oluşturuyoruz.
    }
  }




}
