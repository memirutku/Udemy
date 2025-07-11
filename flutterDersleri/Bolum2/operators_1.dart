void main(List<String> args) {
  // ARİTMETİK OPERATÖRLER, matematiksel işlemleri gerçekleştirmek için kullanılır
  // +, -, *, /, % gibi operatörler ile toplama, çıkarma, çarpma, bölme ve mod alma işlemleri yapılabilir
  // int, double gibi sayısal veri tipleri ile kullanılabilir
  // örnek:
  int sayi1 = 10;
  int sayi2 = 5;
  int toplam = sayi1 + sayi2; // toplam değişkeni 15

  //ATAMA VE KARSILASTIRMA OPERATÖRLER, değişkenlere değer atamak ve değişkenlerin değerlerini karşılaştırmak için kullanılır
  // =, +=, -=, *=, /=, %= gibi operatörler ile değişkenlere değer atayabiliriz
  // ==, !=, >, <, >=, <= gibi operatörler ile değişkenlerin değerlerini karşılaştırabiliriz
  // örnek:
  int sayi3 = 20;
  int sayi4 = 15;
  sayi3 += sayi4; // sayi3 değişkenine sayi4 değerini ekler, sayi3 = 35 olur
  bool esitMi = sayi3 == sayi4; // esitMi değişkeni false olur, çünkü 35 != 15

  String isim1 = "Ahmet";
  String isim2 = "Mehmet";
  if (isim1 == "Ahmet") {
    print("Sayılar eşit değil.");
  } else {
    print("Sayılar eşit.");
  }
  // if de string değişkelerini çift eşittir kullanılabilir. == ile kontrol edilir. Java da kullanılınca sıkıntı oluabiliyor. ama dartta sıkıntı yok.

  //MANTIKSAL OPERATÖRLER, koşullu ifadeleri kontrol etmek için kullanılır
  // &&, ||, ! gibi operatörler ile koşullu ifadeleri kontrol edebiliriz
  // && operatörü, her iki koşulun da doğru olması gerektiğini belirtir
  // || operatörü, en az bir koşulun doğru olması gerektiğini belirtir
  // ! operatörü, koşulun tersini alır. Değili yani.
  // örnek:
  bool kosul1 = true;
  bool kosul2 = false;
  if (kosul1 && kosul2) {
    print("Her iki koşul da doğru.");
  } else if (kosul1 || kosul2) {
    print("En az bir koşul doğru.");
  } else {
    print("Hiçbir koşul doğru değil.");
  }
}