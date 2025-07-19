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
 Map <String,int> ogrenciler2=Map(); // Boş bir Map tanımlama, key türü String, value türü int
 // ya da
 Map <String,int> ogrenciler3={}; // Boş bir Map tanımlama, key türü String, value türü int


  // Map elemanlarını yazdırma
  print('Öğrenciler: $ogrenciler'); // Öğrenciler: {Ali: 85, Ayşe: 90, Mehmet: 78, Fatma: 92}

  // Map elemanlarına erişim
  print('Ali\'nin notu: ${ogrenciler['Ali']}'); //Listelerde index yazarken burada keyini yazıyoruz
  // Ali'nin notu: 85

  // Map'e eleman ekleme
  ogrenciler['Ahmet'] = 88; // Map'e eleman ekleme burada öğrencilere Ahmet diye bir key ekliyoruz ve value olarak 88 veriyoruz.
  print('Öğrenciler (Ahmet eklendikten sonra): $ogrenciler');

  // Map'ten eleman silme
  ogrenciler.remove('Mehmet'); // Map'ten eleman silme
  print('Öğrenciler (Mehmet silindikten sonra): $ogrenciler');

  // Map'te eleman var mı kontrol etme
  bool varMi = ogrenciler.containsKey('Ayşe'); // Map'te key var mı
  print('Map içinde Ayşe var mı? $varMi'); // Map içinde Ayşe var mı?


for(String key in ogrenciler.keys){ // Map'teki tüm key'leri yazdırma
  print('Key: $key'); // Key: Ali, Key: Ayşe, Key: Fatma, Key: Ahmet
  print("Value: ${ogrenciler[key]}"); // Value: 85, Value: 90, Value: 92, Value: 88
}

for(dynamic value in ogrenciler.values){ // Map'teki tüm value'leri yazdırma //yerleri belli değil de dinamik olduğu için dynamic kullanıyoruz.
  print('Value: $value'); // Value: 85, Value: 90, Value: 92, Value: 88
}

// çiftleri yazdırma
for (var entry in ogrenciler.entries) { // Map'teki tüm key-value çiftlerini yazdırma entry hem key hem de value'yu tutar.
  print('Key: ${entry.key}, Value: ${entry.value}'); // Key: Ali, Value: 85
} // Key: Ayşe, Value:

// hem key hem value var mı  yok mu bakabiliriz.
ogrenciler.containsKey('Fatma'); // Map'te key var mı
  print('Map içinde Fatma var mı? $varMi'); // Map içinde Fatma
ogrenciler.containsValue(92); // Map'te value var mı
  print('Map içinde 92 var mı? ${ogrenciler.containsValue(92)}'); // Map içinde 92 var mı? true

  // Map'i temizleme
  ogrenciler.clear(); // Map'i temizleme
  print('Öğrenciler (temizlendikten sonra): $ogrenciler'); // Öğrenciler (temizlendikten sonra): {}

}