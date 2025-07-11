void main(List<String> args) {
  //ARTIRMA AZALTMA OPERATÖRLERİ, değişkenlerin değerini artırmak veya azaltmak için kullanılır
  // ++, -- gibi operatörler ile değişkenlerin değerini artırabilir veya azaltabiliriz
  // örnek:
  int sayi = 10;
  sayi++; // sayi değişkeni 11 olur sayi = sayi + 1 // burada önce sayıyı yazar sonra artırır
  sayi--; // sayi değişkeni 10 olur sayi = sayi - 1 // burada önce sayıyı yazar sonra azaltır
  ++sayi; // farkı şu, burada önce artırır sonra sayıyı yazar
  --sayi; // burada önce azaltır sonra sayıyı yazar

  int sayi1 = 5;
  int sayi2 = 5;

  int a = ++sayi1; // Prefix: önce arttır, sonra ata
  int b = sayi2++; // Postfix: önce ata, sonra arttır

  print("++sayi1 sonucu: a = $a, sayi1 = $sayi1");
  print("sayi2++ sonucu: b = $b, sayi2 = $sayi2");

  //ISLEM ONCELIGI
  //() önce parantez içindeki işlemler
  // ++ ve -- Değişkenden önce gelenler ++sayi;
  // * / %
  // + -
  // = atama işlemi
  // ++ ve -- Değişkenden sonra gelenler sayi++;

  int s1 = 10, s2 = 5;
  double sonuc = 0;

  //sonuc = (s1 + s2 * 3 - s2) + s2 - s1 * 5 + s1;
  //print(sonuc);

  sonuc =
      (s1 * s2 + 4 / 2) + s1++ * s2 +(++s1); // ilk s1++ da s1 10 değeri ile işlem yapar (* daha önceliklidir çünkü ++ değişkenin sağ tarafındadır) işlem yaptıktan sonra 11 değeri olur ve ++s1 deki s1 11 değeri ile işlem yapar.
  print(sonuc);
}
