/*
-Number
 -Int tamsayılar
 -Double ondalıklı sayılar
-String metinsel ifadeler
-Boolean true/false

Tüm veri tipleri Object yani nesnelerdir
"var" anahtaer kelimesi variable yani değişken anlamına gelir. Veri türünü belirtmek istemiyorsak "var" kullanabiliriz.
Atanan ifadeye göre veri tipi otomatik olarak belirlenir.

"dynamic" anahtar kelimesi ise dinamik yani değişken anlamına gelir.
*/
void main(List<String> args) {
  // main fonksiyonu programın başlangıç noktasıdır.
  int sayi = 10; // tamsayı
  double ondalikliSayi = 10.5; // ondalıklı sayı
  String metin = "Merhaba, Dünya!"; // metinsel ifade
  bool dogruMu = true; // boolean ifade
  var dinamikDegisken = "Bu bir dinamik değişkendir"; // dinamik değişken
  dynamic dinamikDegisken2 =
      42; // dinamik değişken, farklı türde değerler alabilir
  print(sayi);
  print(ondalikliSayi);
  print(metin);
  print(dogruMu);
  print(dinamikDegisken);
  print(dinamikDegisken2);
  dinamikDegisken2 = "Artık bir metin"; // dinamik değişkenin türü değişebilir
  print(dinamikDegisken2); // Artık bir metin
  // print(sayi + metin); // Bu satır hata verecer çünkü int ve String toplanamaz.
  // print(sayi + dinamikDegisken); // Bu satır da hata verecektir çünkü int ve String toplanamaz.
  print(
    "Sayı: $sayi, Ondalıklı Sayı: $ondalikliSayi,Metin: $metin, Doğru Mu: $dogruMu, Dinamik Değişken: $dinamikDegisken, Dinamik Değişken2: $dinamikDegisken2",
  );
  // String interpolasyonu ile değişkenleri metin içinde kullanma
  print(
    "Sayı: " +
        sayi.toString() +
        ", Ondalıklı Sayı: " +
        ondalikliSayi.toString() +
        ", Metin: " +
        metin +
        ", Doğru Mu: " +
        dogruMu.toString() +
        ", Dinamik Değişken: " +
        dinamikDegisken +
        ", Dinamik Değişken2: " +
        dinamikDegisken2.toString(),
  );
  // toString() metodu
  // ile int, double ve bool türündeki değişkenleri String'e dönüştür
  // Bu, String interpolasyonu ile aynı sonucu verir.
}
