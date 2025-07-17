/*
-Methodlarımıza geçtiğimiz parametlererin isteğe bağlı olmasını yani verilirse olur verilmese de olur gibi durumlarda süslü ve köşeli parantez kullanabiliriz.
-Eğer köşeli parantez [] kullanursak bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu ortadan kaldırır.
-Eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır ama bu parametreleri belirtirken sıralama önemini kaybeder ve de parametreleri gereken isimlerini verkem zorunda kalırız.
-Ayrıca method tanımlarında tanımların parametrekerle = diterek varsayılan değerler atayabiliriz.Bu değerler sayesinde eğer kullanıcı method parametrelerini atamamışsa bu varsayılan değerler kullanılır.
*/
void main(List<String> args) {
  int toplam = sayilariTopla(
    10,
    20,
  ); // sayi3 parametresi atlanır ve varsayılan değeri 0 kullanılır
  print("Toplam: $toplam"); // 30

  selamVer(
    20,
    isim: "Mustafa",
    soyisim: "Emir",
  ); // Burada isim ve soyisime ne geliceğini direkt belirttik.
}

//required parametreler
// bu parametreler methoda gönderilmek zorundadır. Eğer gönderilmezse hata alırız.
int sayilariCarp(int sayi1, int sayi2, int sayi3) {
  return sayi1 *
      sayi2 *
      sayi3; // bu fonksiyon üç sayıyı böler ve geriye bölüm sonucunu döndürür
}
// süslü parantez kullanarak say

//optional parametreler
// bu parametreler methoda gönderilmek zorunda değildir. Eğer gönderilmezse varsayılan değer kullanılır.
int sayilariTopla(int sayi1, [int sayi2 = 10, int sayi3 = 0]) {
  // burada sayi2 ve sayi3 parametreleri isteğe bağlıdır
  // eğer sayi2 ve sayi3 parametreleri verilmezse varsayılan değerler kullanılır
  // sayi2 için varsayılan değer 10, sayi3 için varsayılan değer 0 olarak belirlenmiştir
  // bu sayede sayılarıTopla fonksiyonunu çağırırken sayi2 ve sayi3 parametrelerini atlamak mümkün olur
  // değer atanmaz ise error verir zaten.
  // bu sayede sayılarıTopla fonksiyonunu çağırırken sayi3 parametresini atlamak mümkün olur
  return sayi1 + sayi2 + sayi3;
}

// optionel named parameters
// bu parametreler methoda gönderilmek zorunda değildir. Eğer gönderilmezse varsayılan değer kullanılır.
// süslü parantez kullanarak isteğe bağlı parametreler tanımlıyoruz
String selamVer(int yas, {String? isim, String soyisim = "Adana"}) {
  // süslü parantez de kullanırken main de isim: "Mustafa" gibi isimlerini belirterek kullanmalıyız. de içeride de değer atayabiliriz.  String soyisim = "Adana" gibi
  //süslü parantez içinde alınmayan var ise kullanırken üst kısmını belirtemezsin. Yani yas: 20 gibi kullanamayız.sadece 20 yazabiliriz.
  // süslü parantez kullanarak soyisim parametresini isteğe bağlı hale getiriyoruz
  // eğer soyisim parametresi verilmezse boş string değeri kullanılır
  return "Merhaba $isim $soyisim";
}

int hacimHeaspla({int en=0,int boy=0,int  yukseklik=0}) { // istersen int ya da double de yazabilirsin. ya da hiç yazmayabilirsin. sıkıntı olmaz. ama yazarsan daha okunabilir olur. ve uygulamada daha iyi olur.
  return en * boy * yukseklik;
}
