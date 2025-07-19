/*
*Map yapısı da set gibi sırasız bir şekilde elemanlarını saklayan bir koleksiyon öğesidir.

*Bu yapıyı listlereden ve setten ayıran özellik ise elemanları key-value çiftleri olarak saklamasıdır.

*Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerinin unique(benzersiz)
 olmasıdır.

*map yapısını sözlüğe benzetebiliriz. yani key değerleri sözlükteki kelimeler gibi düşünülür.

*Sabit uzunluklu map yapısı yoktur. yani dinamik uzunluklu map yapısı vardır.

*map da da süslü parantez kullanılır. setler gibi ama setlerden farklı olarak key-value çiftleri kullanılır.
*/
void main(List<String> args) {
  // Map tanımlama
  Map<String, int> ogrenciler = { // ok işareti ile key-value çiftleri tanımlanır.
    // key türü String, value türü int gibi. istersek String, int, double, bool  gibi türler kullanabiliriz. ve istersek de dynamic türü kullanabiliriz. <dynamic, dynamic> gibi.
    // sting, object de yazılabilir. yani Map<String, Object> gibi.
    'Ali': 85,
    'Ayşe': 90,
    'Mehmet': 78,
    'Fatma': 92,
  }; // Map tanımlama, key türü String, value türü int

  // Map elemanlarını yazdırma
  print('Öğrenciler: $ogrenciler'); // Öğrenciler: {Ali: 85, Ayşe: 90, Mehmet: 78, Fatma: 92}

  // Map elemanlarına erişim
  print('Ali\'nin notu: ${ogrenciler['Ali']}'); //Listelerde index yazarken burada keyini yazıyoruz
  // Ali'nin notu: 85

  // Map'e eleman ekleme
  ogrenciler['Ahmet'] = 88; // Map'e eleman ekleme
  print('Öğrenciler (Ahmet eklendikten sonra): $ogrenciler');

  // Map'ten eleman silme
  ogrenciler.remove('Mehmet'); // Map'ten eleman silme
  print('Öğrenciler (Mehmet silindikten sonra): $ogrenciler');

  // Map'te eleman var mı kontrol etme
  bool varMi = ogrenciler.containsKey('Ayşe'); // Map'te key var mı
  print('Map içinde Ayşe var mı? $varMi'); // Map içinde Ayşe var mı?

  // Map'i temizleme
  ogrenciler.clear(); // Map'i temizleme
  print('Öğrenciler (temizlendikten sonra): $ogrenciler'); // Öğrenciler (temizlendikten sonra): {}
}