/* Sorular

1- Sehirleri tutan bir liste olusturun, 4 tane il ekleyip sırasıyla ekrana yazdırın.

2- Keyleri string, değerleri dynamic olan bir map olusturun, Bu mağ yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve depolama alanını tutun. ve ekrarna yazdırın.

3-Her bir elemanında keyleri string, valueleri dynamic olan map olan bir liste oluşturun. Bulistedeki her bir eleman il adını, ilçe sayısını ve plaka kodunu tutsun. Bu listeyi ekrana yazdırın.
(Örn: listenin 1.elamında bulunan il ankara, plaka kodu:06, ilçe sayısı: 25( sayılar rastgele olabilir))

4- 5 elemanlı iki farklı liste oluşturun Elemanlar 0-50 ye rastgele şekilde oluşturulsun. Bu elemanları tek bir listeye aktarın.

5- Kullanıcıdan aldığımız integer pozitif ssaylıarı bir listede tutun, kullanıcı 0 değerini girdiğinde firilen sayıların ortalamasını ekrana yazdırın.
*/
import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  /*
//1
  List<String> sehirler = [];
  sehirler.add("istanbul");
  sehirler.add("adana");
  sehirler.add("ankara");
  sehirler.add("izmir");
  for (String sehir in sehirler) {
    print("Listede ki sehirler $sehir");
  }


  //2

  Map<String, dynamic> bilgisayar = {};
  bilgisayar["İşlemci"] = "m2"; // add ile değil böyle map e ekleme yapıyoruz.
  bilgisayar["Çekirdek"] = 16;
  bilgisayar["Ram"] = 16;
  bilgisayar["Depolama Alanı"] = 256;

  for (dynamic ozellik in bilgisayar.entries) { // var değil de dynamic kullanıyoruz
  // burada ikisini de kullancaksak entries yapıyoruz yoksa values ya da keys olarak da yapabiliriz.
    print("Bilgisayarın özellikleri ${bilgisayar.values}"); //map de süslü kullanıyoruz
  }


  //3

  List<dynamic> ulke = [];
  Map<String, dynamic> sehirler = {};

  sehirler["Şehir"] = "İstanbul";
  sehirler["Plaka"] = 34;
  sehirler["İlçe"] = 21;
  ulke.add(sehirler);
  sehirler = {};
  sehirler["Şehir"] = "Adana";
  sehirler["Plaka"] = 01;
  sehirler["İlçe"] = 24;
  ulke.add(sehirler);
  for (dynamic ulk in ulke) {
    // burada sadece şehirlere ulaşmak istiyorsak ulke[0]["Şehir"] gibi yazabiliriz.
    print(ulk["Şehir"]);
    print(ulk["Plaka"]);
    print(ulk["İlçe"]);
  }

  //4

  List<int> list1 = List.generate(5, (index) => Random().nextInt(51)); // 0-50 ye rastgele sayılar üretir.
  List<int> list2 = List.generate(5, (index) => Random().nextInt(51)); //random sayı generate etme list kısmında*****


  List list3 = [...list1 , ...list2]; //üç nokta kelimeden önce
 print (list3);
*/
  //5

  List<int> sayilar = [];

  int toplam = 0;

  do {
    int sayi;
    print("Sayı giriniz");
    sayi = int.parse(stdin.readLineSync()!);
    sayilar.add(sayi);
  } while (sayilar.last != 0); // kullanıcı 0 girene kadar devam etsin.
  // bunu sadece while(true) ile de yapabiliriz 0 değeri girdiğinde false olur.

  for (int sayi1 in sayilar) {
    toplam += sayi1;
  }
  var ortalama = (toplam / (sayilar.length-1).toInt());
  print("Ortalama $ortalama");
}
