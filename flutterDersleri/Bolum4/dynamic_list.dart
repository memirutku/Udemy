
/*

*Dinamik olarak büyüyen küçülen Koleksiyonlarımız varsa sabit uzunluklı listeler yerine 
büyüyen lislteleri kullanabiliriz. Bu listelere varsayılan olarak boyut vermemiz gerekmez

Tanımlanması sabit uzunluklu dizilere benzer sadece bırada listenin boyutunu belirtmeyiz

Add eleman ekler

clear listeyi temizler

remove eleman siler

removeAt(index) indexteki elemanı siler

Ayrıca [] kullanarak belli bir indexteki elemanı güncelleyebiliriz.
*/

void main(List<String> args) {
    // Dinamik uzunluklu liste
  List<int> isimler = []; // Boş bir dinamik liste
  List<int?> isimler2 = []; // Boş bir dinamik liste, elemanlar nullable yani içeriği null olabilir.
  List<int> isimler3 = List<int>.empty(); // Bu da boş bir dinamik liste tanımlamasıdır. isimler2, isimler4 ile hiçbir farkı yoktur. Birebir yanıdır.
   List<int> isimler4 = List.empty(growable: true); // Bu da boş bir dinamik liste tanımlamasıdır, growable: true ile dinamik uzunluklu liste oluşturulur.
  List<int> isimler5 = List<int>.filled(10,0,growable: true); // Bu da 10 elemanlı dinamik uzunluklu liste tanımlamasıdır, growable: true ile dinamik uzunluklu liste oluşturulur. Yani başlangıçta 10 eleman var ama daha sonra eleman ekleyebiliriz.


  // Listeye eleman ekleme
  isimler.add(1);
  isimler.add(2);
  isimler.add(3); // Listeye eleman ekleme

  //sabit elemanlılarda ekleme işlemi güncelleme ile olurken burada direkt add ile ekleme yapabiliyoruz.

  //Clear listeyi temizler
  isimler.clear(); // Listeyi temizler
  print('Liste temizlendikten sonra eleman sayısı: ${isimler.length}'); // 0

  // Listeye tekrar eleman ekleme
  isimler.add(4);
  isimler.add(5);
  isimler.add(6);

  // Remove eleman siler
  isimler.remove(5); // 5 elemanını siler
  print('5 elemanı silindikten sonra liste: $isimler'); // [4, 6]
  // RemoveAt(index) indexteki elemanı siler
  isimler.removeAt(0); // 0. indexteki elemanı siler
  print('0. indexteki eleman silindikten sonra liste: $isimler'); // [6]

  // Listede Eleman Güncelleme
  isimler[0] = 10; // 0. indexteki elemanı günceller // Ayrıca sabit elemanlarda aslında ekleme olarak düşündüğümüz bu işlem burada güncelleme olarak düşünülebilir. ama her zaman güncelleme işlemi.


  print('0. indexteki eleman güncellendikten sonra liste: $isimler'); // [10]
}
