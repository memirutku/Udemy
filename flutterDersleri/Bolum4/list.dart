/*
list ikiye ayrılır.
1- Sabit uzunluklu listeler
2- Dinamik uzunluklu listeler (Büyüyen listeler)


- Diğer dillerde dizi olarak bilnen yapılar dart dilinde sabit uzunluklu listeler olarak kullanılır.
- List <int> numaralar = List.filled(10, 0); // 10 eleman içeren sabit uzunluklu liste yani dizi.
- Index numaraları 0'dan başlar. yani listenin ilk elemanına erişmek için 0. indexe bakılır.
- numara[0] // listenin ilk elemanına erişim
*/

void main(List<String> args) {
  // Sabit uzunluklu liste
  List<int> numaralar = List.filled(10, 0); // 10 eleman içeren sabit uzunluklu liste yani dizi.
   //filled metodu ile liste oluşturulduğunda, tüm elemanlar başlangıçta 0 olarak ayarlanır.
   //eğer filled(10,1) şeklinde yazılırsa, tüm elemanlar başlangıçta 1 olarak ayarlanır.
   //ilk rakam kaç tane eleman olacağını, ikinci rakam ise tüm rakamların başlangıç değerini belirler.
  //<int> <string> gibi türler, listenin elemanlarının tipini belirtir.
   // her türden yapacak isek dinamik liste kullanabiliriz.

  List<dynamic> dinamikListe = []; // Dinamik uzunluklu liste böyle tanımlanır.
//<dynamic> türü, listenin elemanlarının farklı türlerde olabileceğini belirtir.
// ama yazmak zorunda değiliz. sadece List isimli bir liste tanımlarsak, dinamik uzunluklu liste olur.

List<dynamic> dinamikListe2 = List<dynamic>.filled(10, 0); // Filled den önce de dynamic yazılabilir.


  List <String> isimler2 = List.filled(10,"",growable: false); //growable: false ile sabit uzunluklu liste oluşturulur. eğer growable: true yazılırsa dinamik uzunluklu liste oluşturulur.

// dikkat etmek gereken şey liste uzunluğu 10 ise en fazla 9. indexe kadar erişilebilir. yani 10. indexe erişmeye çalışırsak hata alırız.

  // Listeye eleman ekleme
  numaralar[0] = 1;
  numaralar[1] = 2;
  numaralar[2] = 3;

  // Liste elemanlarını yazdırma
  for (int i = 0; i < numaralar.length; i++) {
    print('Eleman $i: ${numaralar[i]}');
  }
// Liste elemanlarını yazdırma diğer bir yöntem
  for (int eleman in numaralar) {
    print('Eleman: $eleman');
  }


  // Dinamik uzunluklu liste
  List<String> isimler = []; // Boş bir dinamik liste

  // Listeye eleman ekleme
  isimler.add('Ahmet');
  isimler.add('Mehmet');
  isimler.add('Ayşe');

  // Liste elemanlarını yazdırma
  for (String isim in isimler) {
    print('İsim: $isim');
  }
}