/*
fonksiyon kavramı sayesinde kodlarımızı daha modüler ve okunabilir hale getirebiliriz.
Fonksiyonlar, belirli bir görevi yerine getiren kod bloklarıdır.
Bu sayede kod tekrarını önleyebilir ve kodlarımızı daha düzenli bir şekilde yazabiliriz.
Fonksiyonlar, parametre alabilir ve geriye değer döndürebilir.
Fonksiyonlar, programın farklı bölümlerinde tekrar tekrar kullanılabilir.
Bu sayede kodlarımızı daha verimli bir şekilde yazabiliriz.

Bir uygulama geliştirirken, bir problemi çözerken o preoblemde belli bir işi yapan kodları methodlara bölmemiz gerekir. Bunun için method ve fonksiyon kavramlarını kullanırız.

Method ve fonksiyon kavramları birbirine çok benzer. Dart dilinde method ve fonksiyon kavramları birbirinin yerine kullanılabilir. Ancak methodlar genellikle bir sınıfın içinde tanımlanırken, fonksiyonlar sınıf dışında tanımlanır.

Methodlar parametre alabilir ve ya bir parametreye sahip olmayabilir.
Methodlar geriye bir değer döndürebilir. Değer döndüremeyen method tanımlarının başına void yazılır.
Dart dilinde return ve method geri döndürme veri tipi değeri opsiyoneldir. yani belirtmek zorunda değiliz.
Ancak, kodlarımızı daha okunabilir ve anlaşılır hale getirmek için veri tipini belirtmek iyi bir uygulamadır.
*/

void main(List<String> args) {
  cevreyiHesapla(); // bu fonksiyonu çağırıyoruz. Fonksiyonlar, main fonksiyonunun dışında tanımlanır.
  // Fonksiyonlar, programın farklı bölümlerinde tekrar tekrar kullanılabilir.
  // Bu sayede kodlarımızı daha verimli bir şekilde yazabiliriz.
  // bu fonksiyonu tekrar çağırıyoruz. Fonksiyonlar, programın farklı bölümlerinde tekrar tekrar kullanılabilir.// Burada fonksiyona bir parametre gönderiyoruz. Bu parametre, fonksiyonun içinde kullanılabilir.
  // Fonksiyonlar, parametre alabilir ve geriye değer döndürebilir.
  // Bu sayede kodlarımızı daha modüler ve okunabilir hale getirebiliriz.
  // Fonksiyonlar, belirli bir görevi yerine getiren kod bloklarıdır.
  // Bu sayede kod tekrarını önleyebilir ve kodlarımızı daha düzenli bir şekilde yazabiliriz.

  alanHesapla(10, 5);

  int alanSonucu = alanHesapla(
    10,
    5,
  ); // bu fonksiyonu çağırıyoruz ve geriye değer döndürüyor.
  // o değeri de parametreye atıyoruz. Bu sayede fonksiyonun geriye döndürdüğü değeri kullanabiliriz.
  print("Alan sonucu: $alanSonucu");

  int hacimSonucu = hacimHesapla(10, 5, 2); // bu fonksiyonu çağırıyoruz ve geriye değer döndürüyor.
  print("Hacim sonucu: $hacimSonucu"); // o değeri de parametreye atıyoruz. Bu sayede fonksiyonun geriye döndürdüğü değeri kullanabiliriz.
}

// parametresiz fonsksiyon
cevreyiHesapla() {
  // bu fonksiyon, çevreyi hesaplamak için kullanılır
  // parametre almaz ve geriye değer döndürmez
  // void, fonksiyonun geriye değer döndürmediğini belirtir
  // eğer geriye değer döndürmek istiyorsak başına veri tipi yazmalıyız
  // örneğin int, double, String gibi
  // eğer geriye değer döndürmek istemiyorsak void yazmalıyız
  int en = 10, boy = 10;
  int cevre = (en + boy) * 2;
  print("Çevre hesaplandı: $cevre .");
}

//parametre alan fonksiyon
alanHesapla(int sayi1, int sayi2) {
  // bu fonksiyon, alanı hesaplamak için kullanılır
  // parametre alır ve geriye değer döndürür
  // int, fonksiyonun geriye int değer döndüreceğini belirtir
  int alan = sayi1 * sayi2;
  //print("Alan hesaplandı: $alan ."); // bu geriye döndürme işlemi değil, sadece ekrana yazdırma işlemi

  // return, fonksiyonun geriye değer döndürmesini sağlar
  return alan; // bu fonksiyonun geriye int değer döndürmesini sağlar
}

hacimHesapla(int en, int boy, int yukseklik) {
  // bu fonksiyon, hacmi hesaplamak için kullanılır
  // parametre alır ve geriye değer döndürür
  // int, fonksiyonun geriye int değer döndüreceğini belirtir
  int hacim = en * boy * yukseklik;
  return hacim;
}
