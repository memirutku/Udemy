void main(List<String> args) {
  var listem = <String>[]; // Boş bir liste tanımlama string türünde
  var mySet = {}; // Boş bir set tanımlama
  var myMap = {}; // Boş bir map tanımlama
  //setler ile maplar tanımlanırken süslü parantez kullanılır içine değer attıkça ya da öndeki kısımda değer belirtiğimizde fark anlaşılır.
  //Okunabilirliği artırmak için şöyle yaparız.
  var mySet2 = <String>{}; // Boş bir set tanımlama string türünde
  var myMap2 =
      <
        String,
        int
      >{}; // Boş bir map tanımlama string türünde key, int türünde value

  //-------------------

  var tekSayilar = [1, 3, 5, 7, 9]; // Tek sayılar listesi
  var ciftSayilar = [2, 4, 6, 8, 10]; // Çift sayılar listesi

  var sonListe = []; // Boş bir liste tanımlama
  sonListe.addAll(tekSayilar); // Tek sayıları sonListe'ye ekleme
 sonListe.addAll(ciftSayilar); // Çift sayıları sonListe'ye ekleme
  print(sonListe); // [1, 3, 5, 7, 9, 2, 4, 6, 8, 10]
  //iterable bir veri yapısıdır. yani üzerinde döngü yapılabilen bir veri yapısıdır. listeler, setler ve mapler iterable'dır.

// bunları spead operator ile de yapabiliriz.
var sonliste3 = [tekSayilar, ciftSayilar]; // Liste içinde liste oluşturma
  print(sonliste3); // [[1, 3, 5, 7, 9], [2, 4, 6, 8, 10]] yaparsak böyle olur ve aslında tam istediğimiz gibi olmaz. bu yüzden başlara üç nokta koyarak spread operator kullanırız.

  // Spread operator ile liste birleştirme. En çok kullanılan yöntemlerden biri.
var sonListe2 = [...tekSayilar, ...ciftSayilar]; // Spread operator ile tek ve çift sayıları birleştirme
  print(sonListe2); // [1, 3, 5, 7, 9, 2, 4, 6, 8, 10]



}
