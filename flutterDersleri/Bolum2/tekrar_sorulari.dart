void main(List<String> args) {
  /*
  List sayilar = [15.0, 20.0, 25.0, 30.0];
  double toplam = 0.0;

  for (int i = 0; i < sayilar.length; i++) {
    toplam = sayilar[i] + toplam;
    if (i == sayilar.length - 1) {
      //-1 yazmamazın nedeni listeler 0 sonuncu elemanı kontrol etmek için
      print("Ort: ${toplam / sayilar.length})");
    }
  }
*/

  /*
  // eşkenar ikizkenar çeşitkenar
  int kenar1 = 4;
  int kenar2 = 5;
  int kenar3 = 6;

  if (kenar1 == kenar2 && kenar2 == kenar3) {
    print("Eşkenar üçgen");
  } else if (kenar1 == kenar2 || kenar2 == kenar3 || kenar1 == kenar3) {
    print("İkizkenar üçgen");
  } else {
    print("Çeşitkenar üçgen");
  }*/

  /*
  int vize = 50;
  int finalNot = 100;
  int ortalama =
      (vize * 40 + finalNot * 60) ~/
      100; // Burada vize notunun %40'ı ve final notunun %60'ı alınarak ortalama hesaplanıyor
  if (ortalama >= 50) {
    print("Geçtiniz. Ortalama: $ortalama");
  } else {
    print("Kaldınız. Ortalama: $ortalama");
  }*/

  // for while doWhile
  /*
  String isim = "Mustafa";
  String soyisim = "Emir";
  int i = 0;
  for (int i = 1; i < 5; i++) {
    print("Merhaba $isim $soyisim");
  }

  while (i < 5) {
    print("Merhaba $isim $soyisim");
    i++;
  }
  int j = 0;
  do {
    print("Merhaba $isim $soyisim");
    j++;
  } while (j < 6);
  */

  /*
  List number;
  //listeye 1 den 100 e kadar olan sayıları ekleyelim
  number = List.generate(
    100,
    (index) => index + 1,
  ); // 0 dan başlar 1 den başlatmak için index + 1 ekliyoruz.
  for (int i = 0; i < number.length; i++) {
    if (number[i] % 15 == 0) {
      print("Bu sayı 15'e tam bölünür: ${number[i]}");
    }
  }
  */

  int faktoriyelSonuc = 1;
  int sayi = 4;
  for (sayi; sayi > 0; sayi--) {
    //faktoriyelSonuc = faktoriyelSonuc * sayi; // faktoriyelSonuc *= sayi
    faktoriyelSonuc *= sayi;
  }
  print("Verilen Sayının Faktoriyeli:$faktoriyelSonuc'dur");
}
