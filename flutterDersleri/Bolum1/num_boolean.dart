void main(List<String> args) {
  int yas = 25;
  print(yas > 18); // true
  print(yas < 18); // false
  print(yas == 18); // false
  print(yas != 18); // true
  print(yas >= 18); // true
  print(yas <= 18); // false
  print(yas == 25 && yas < 30); // true
  print(yas == 25 || yas < 20); // true
  print(!(yas < 18)); // true
  print(yas is int); // true
  print(yas is! String); // true
  print(yas is double); // false
  print(yas is! int); // false
  print(yas is String); // false
  print(yas is bool); // false
  print(yas is! bool); // true
  print(yas is num); // true
  print(yas is! num); // false
  print(yas is Object); // true
  print(yas is! Object); // false
  print(yas.runtimeType); // int
  print(yas.toString()); // "25"
  print(yas.toDouble()); // 25.0
  print(yas.toString() + " yaşındayım."); // "25 yaşındayım."
  print("Yaşım: $yas"); // "Yaşım: 25"
  print("Yaşım: ${yas + 5}"); // "Yaşım: 30"
  print("Yaşım: ${yas > 18 ? 'Yetişkin' : 'Çocuk'}"); // "Yaşım: Yetişkin"
  // ? işareti, koşullu ifade
  // : işareti, koşul sağlanmazsa ne yapılacağını belirtir
  print(
    "Yaşım: ${yas < 18
        ? 'Çocuk'
        : yas > 60
        ? 'Yaşlı'
        : 'Yetişkin'}",
  ); // "Yaşım: Yetişkin"
  // Koşullu ifadelerle daha karmaşık ifadeler oluşturabilirsiniz.
  // Bu örnekte, yaş 18'den küçükse "Çocuk", 60'tan büyükse "Yaşlı", aksi takdirde "Yetişkin" olarak değerlendirilir.
  print(
    "Yaşım: ${yas > 18
        ? 'Yetişkin'
        : yas < 12
        ? 'Çocuk'
        : 'Genç'}",
  ); // "Yaşım: Yetişkin"
  // Bu örnekte, yaş 18'den büyükse "Yetişkin", 12'den küçükse "Çocuk", aksi takdirde "Genç" olarak değerlendirilir.
  print(
    "Yaşım: ${yas > 18
        ? 'Yetişkin'
        : yas < 12
        ? 'Çocuk'
        : yas < 18
        ? 'Genç'
        : 'Ergen'}",
  ); // "Yaşım: Yetişkin"
  // Bu örnekte, yaş 18'den büyükse "Yetişkin", 12'den küçükse "Çocuk", 18 ile 12 arasında ise "Genç", aksi takdirde "Ergen" olarak değerlendirilir.
  int numara;
  //print(numara); // değer verilmediği için null o yüzden hata verir
  //print(numara is int); // false çünkü numara değişkenine henüz bir değer atanmamış
  numara = 10; // numara değişkenine değer atandı
  print(numara); // 10
  print(
    numara is int,
  ); // true çünkü numara değişkenine int türünde bir değer atandı
  //numara = 10.5; // hata veriri çünkü int olan numara değişkenine double türünde bir değer atandı
  print(numara); // 10.5

  double? s1 =
      null; //burada soru işareti kullanarak s1 değişkeninin null olabileceğini belirtiyoruz.
  print(s1); // null hata vermez çünkü s1 değişkeni nullable olarak tanımlandı.
  //print(s1 + 10); // hata veriri çünkü null üzerinde matematik işlemi yapılamaz.
  print(
    s1 is double,
  ); // false çünkü s1 değişkeni null ve double türünde değil // ama boolean işlemi yapabiliriz.

  int hexadecimalSayi = 0x1A; // onaltılık sayı
  print(
    hexadecimalSayi,
  ); // 26 kendisi otomatik olarak onaltılık sayıdan ondalıklı sayıya dönüştürülür.
  //int binarySayi = 0b0101; // ikilik sayı olmuyor
}
