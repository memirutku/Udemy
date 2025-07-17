void main(List<String> args) {
  print(
    "Alan: ${alanHesapla(10, 5)}",
  ); // bu fonksiyonu çağırıyoruz ve geriye değer döndürüyor. Bu sayede fonksiyonun geriye döndürdüğü değeri kullanabiliriz.
  cevreyiHesapla(); // bu fonksiyonu çağırıyoruz.

  print("büyük olan sayı :" + maxOlaniBul(10, 20).toString());// sayı olduğu için toString() ile string'e çeviriyoruz.
}

// kısa fonksiyon tanımı
int alanHesapla(
  int kenar1,
  int kenar2,
) => // bildiğin ok çiziyorsun ama eşittir ile.
    kenar1 * // tek birtane işlem var. Bu yüzden süslü parantez kullanmıyoruz.***
    kenar2; // bu fonksiyon iki parametre alıyor ve geriye alanı döndürüyor.
// bu fonksiyonun kısa tanımıdır. Normalde süslü parantezler içinde return kullanmamız gerekirken, bu şekilde tek satırda yazabiliyoruz.
// bu sayede kodlarımızı daha okunabilir ve anlaşılır hale getirebiliriz.
// bu fonksiyonun geriye int değer döndüreceğini belirtir. Eğer geriye değer döndürmek istemiyorsak void yazmalıyız.
// örneğin, eğer geriye değer döndürmek istemiyorsak şöyle yazabiliriz:

void cevreyiHesapla() => print(
  "Çevre hesaplandı",
); // bu fonksiyon çevreyi hesaplamak için kullanılır ve geriye değer döndürmez.
// bu fonksiyonun geriye değer döndürmediğini belirtir. Eğer geriye değer döndürmek istemiyorsak void yazmalıyız.

int maxOlaniBul(int sayi1, int sayi2) => (sayi1 > sayi2)
    ? sayi1
    : sayi2; // bu fonksiyon iki sayıyı karşılaştırır ve büyük olanı döndürür.
