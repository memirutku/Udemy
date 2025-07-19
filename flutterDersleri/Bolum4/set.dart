/*
bir diğer koleksiyon türü setlerdir.
List den en önemli farkı elemankarı sıralı olarak tutmaz. Bu durumda lisl lerde olduğu gibi index numarası yoktur.

Bir diğer farkı ise bir lemandan sadece bir rane olur yani her bir eleman birbirinden farklı olmalıdır.

Index olmadan elemanları kontrol ermek için contains metodu kullanılır.

içinde birden fazla aynı karakter olsa bile çıktıda sadece bir tane gösterir.
*/

void main(List<String> args) {
  // Set tanımlama
  Set<int> sayilar = {1, 2, 3, 4, 5}; // Set tanımlama, list de köşeli parantez kullanılırken. Set de süslü parantez kullanılır.

// aynı şekilde set tanımlamak için aşağıdaki yöntemler de kullanılabilir:
  var sayilar1 = <int>{1, 2, 3, 4, 5}; // Set tanımlama, türü int olarak belirleme
  var sayilar2 =Set(); // Set tanımlama, boş bir set oluşturma
  var sayilar3 = Set<int>(); // Set tanımlama, boş bir set oluşturma, türü int olarak belirleme
  var sayilar4 = Set<String>(); // Set tanımlama, boş bir set oluşturma, türü String olarak belirleme
  var sayilar5 = Set<dynamic>(); // Set tanımlama, boş bir set oluşturma, türü dynamic olarak belirleme


  // Set tanımlama, List'ten Set'e dönüştürme
  var sayilar6 = Set<int>.from([1, 2, 3, 4, 5]); // Set tanımlama, List'ten Set'e dönüştürme
  var sayilar7 = Set<int>.of([1, 2, 3, 4, 5]); // Set tanımlama, List'ten Set'e dönüştürme, of metodu ile de yapılabilir.
  //of ile from metodu arasında fark yoktur. ikisi de aynı işlemi yapar.
  var sayilar8 = Set<int>.of(sayilar1); // Set tanımlama, başka bir Set'ten Set'e dönüştürme
  // sayilar1 Set'inden sayilar8 Set'ine dönüştürme


  //Listi den Set'e dönüştürme
  List<int> liste = [1, 2, 3, 4, 5]; // List tanımlama
 Set<int> setFromList = Set<int>.from(liste); // List'ten Set'e dönüştürme
 // ya da
  sayilar2.addAll(liste); // List'ten Set'e eleman ekleme böyle de yapılabilir. ki daha basit bir yöntemdir.


  // Set elemanlarını yazdırma
  print('Set elemanları: $sayilar'); // Set elemanlarını yazdırma

  // Set elemanlarına erişim
  print('Set eleman sayısı: ${sayilar.length}'); // Set eleman sayısını yazdırma

  // Set'e eleman ekleme
  sayilar.add(6); // Set'e eleman ekleme
  print('Set elemanları (6 eklendikten sonra): $sayilar');

  // Set'ten eleman silme
  sayilar.remove(3); // Set'ten eleman silme
  print('Set elemanları (3 silindikten sonra): $sayilar');

  // Set'te eleman var mı kontrol etme
  bool varMi = sayilar.contains(4); // Set'te eleman var mı
  print('Set içinde 4 var mı? $varMi'); // Set içinde 4 var mı?

  // Set'i temizleme
  sayilar.clear(); // Set'i temizleme
  print('Set elemanları (temizlendikten sonra): $sayilar'); // Set elemanları (temizlendikten sonra): {}

  // Set'te elemanları döngü ile yazdırma
  sayilar.addAll({1, 2, 3, 4, 5}); // Set'e eleman ekleme
  print('Set elemanları: $sayilar'); // Set elemanlarını yazdırma
  for (int eleman in sayilar) {
    print('Set elemanı: $eleman'); // Set elemanlarını döngü ile yazdırma
  }
}