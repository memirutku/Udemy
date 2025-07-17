/*parametre olarak bir tane ins sayı alan fonk yazınız.
bufoksiyon aldığı değere kadar çift olan syıların toplamını geriye döndürsün.

daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı eğer PI sayısı verilmezse 3.14 olarak varsayılmalı.


Bir üçgenin kenarlarını isimlendirmiş parametre olarak alan fonksiyon yazınız. Bu fonksiyon kenar
değerlerine göre üçgenin çeşit kenar ikiz kenar veya eşkenar olduğunu ekrana yazdırsın, geriye bir değer döndürmesin.

*/

import '../Bolum1/odev.dart';

void main(List<String> args) {
  //1  fonkCift(10);
  //2  daireAlan(10);
  //2.1 double alan = daireAlan(10);
  //2.1 print("Dairenin alanı: $alan");
  ucgenCesit(kenar1: 4, kenar3: 4);
}

//1
fonkCift(int sayi) {
  for (int i = 0; i <= sayi; i++) {
    if (i % 2 == 0) {
      print("bu sayı çifttir $i");
    } else {
      print("Bu sayı çift değildir $i");
    }
  }
}

//2

daireAlan(int cevre, [double p = 3.14]) {
  double alan = (cevre * cevre * p);
  print("Dairenin alanı: $alan");
  //2.1 return (cevre * cevre * p);
}

//3
ucgenCesit({kenar1 = 3, kenar2 = 4, kenar3 = 5}) {
  if (kenar1 == kenar2 && kenar2 == kenar3) {
    print("Eş kenar üçgen");
  } else if (kenar1 == kenar2 || kenar2 == kenar3 || kenar1 == kenar3) {
    print("ikiz Kenar Üçgen");
  } else {
    (print("Çeşit Kenar üçgen"));
  }
}
