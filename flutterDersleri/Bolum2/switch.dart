void main(List<String> args) {
  //arda arda if else yapmak yerine switch kullanabiliriz.
  //switch, bir değişkenin değerine göre farklı durumları kontrol etmek için kullanılır
  //switch, if-else yapısına göre daha okunabilir ve daha az kod yazmamızı sağlar

  //parantez içinde hangi değeri kontrol edeceğimizi belirtiyoruz
  //switch süslü parantez içinde kullanılır
  String notDegeri = "B";
  switch (notDegeri) {
    // ÖNEMLİ sadece string, int gibi sabit değerler ile kullanılabilir
    //yani double, float gibi değişkenlerle kullanılamaz.
    case "A": // case kısmında notDegeri değişkeninin değeri kontrol ediliyor if gibi yani
      print("Notunuz: 90-100");
      break; // break, switch bloğundan çıkmak için kullanılır
    case "B":
      print("Notunuz: 80-89");
      break;
    case "C":
      print("Notunuz: 70-79");
      break;
    case "D":
      print("Notunuz: 60-69");
      break;
    case "F":
      print("Notunuz: 0-59");
      break;
    default: // default, hiçbir case ile eşleşmediğinde çalışır
      print(
        "Geçersiz not değeri",
      ); // default, hiçbir koşul sağlanmadığında çalışır
  }

  //switch de büyüktür küçüktür gibi operatörler kullanılamaz.
  //ama o şekilde çalışacak duruma sokabiliriz.

  int sayi1 = 24;
  int sayi2 = 3;
  switch (sayi1.compareTo(sayi2)) {
    // compareTo, iki sayıyı karşılaştırır
    case 1: // eğer sayi1 > sayi2 ise 1 döner
      print("$sayi1 $sayi2'den büyüktür.");
      break;
    case -1: // eğer sayi1 < sayi2 ise -1 döner
      print("$sayi1 $sayi2'den küçüktür.");
      break;
    case 0: // eğer sayi1 == sayi2 ise 0 döner
      print("$sayi1 $sayi2'ye eşittir.");
      break;
    default:
      print("Geçersiz durum");
  }
  // ya da switch içinde if else yapısı da kullanılabilir.
  switch (sayi1) {
    case 24:
      if (sayi2 > 5) {
        print("$sayi1 sayi2'den büyüktür.");
      } else {
        print("$sayi1 sayi2'den küçüktür.");
      }
  }
  // ya da
  int sayi = 30;
  int bolum = (sayi / 10).toInt(); // 40 sayısını 10'a bölüp tam sayı olarak alıyoruz. Bölüm işlemlerinin sonucu double olarak döner. O yüzden toInt() ile tam sayıya çeviriyoruz.
  switch (bolum) {
    case 3:
      print("Sayi 30 dan büyük eşittir ");
      break;
    case 2:
      print("Sayı 20 den büyük eşittir");
      break;
    case 1:
      print("Sayı 10 dan büyük eşittir");
      break;
    default:
      print("Geçersiz sayı");
  }
}
// switch, if-else yapısına göre daha okunabilir ve daha az kod yazmamızı sağlar