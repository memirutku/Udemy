//Nesneye yönelimli programlamaya giriş

/*
- Sınıf Kendi veri türlerimizi veya sotur olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir.

İstedeğimiz bir nesenin veya varlığın bilgisayar dillerinde tanımıdır

Nesne Olusturulan soyun ve taslak olan sınflardan üretilen örneklere denir
Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.

Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol eden kumanda olur.
*/
void main(List<String> args) {
  int sayi = 5;
  Ogrenci emre = Ogrenci(); // Ogrenci sınıfından emre adında bir nesne oluşturduk.
  emre.ogrNo = 1234; // emre nesnesinin ogrNo değişkenine değer atadık.
  emre.ogrAd = "Emre";
  emre.aktifMi = "Aktif";
  emre.dersCalis(); // emre nesnesinin dersCalis methodunu çağırdık.

  //aslında emre başına class adını yazarak o classa eşlememiz lazım ki  çağırabilelim.
  //bu tarz biraz garip ama böyle kullanıyoruz.
  // Ogrenci emre = Ogrenci(); // bu şekilde yaptığımızda ogrenci classını emre kodadıyla açmış oluyoruz.
  //emre instance oluyor.

 //önemli
  //istersek var ve dynamic ile de yapabiliriz.
  // var emre = Ogrenci(); // bu şekilde de yapabiliriz.
  // dynamic emre = Ogrenci(); // bu şekilde de yapabiliriz. ama
  //dynamic kullanmak pek önerilmez çünkü tip güvenliğini kaybederiz.
  // var kullanmak daha iyidir çünkü tip güvenliğini korur.
  //tip güvenliği, kodun derleme zamanında hatalarını yakalamamızı sağlar.
  //var ile yaparsak emre nesnesi Ogrenci sınıfının bir örneği olur.
  //dynamic ile yaparsak emre nesnesi herhangi bir türde olabilir.
  //bu yüzden var kullanmak daha iyidir.
}

class Ogrenci {// Sınıf adları büyük harfle başlar.
//instance veriable
  int? ogrNo; // kızarsa ya ? ile bunlar null olabilir diyoruz ya da değer atayabiliriz.
  String? ogrAd;
  String? aktifMi;

  void dersCalis() {
    // fonksiyonlar veya methodlar sınıfın içinde tanımlanır.
    print("$ogrAd ders çalışıyor.");
  }
}
