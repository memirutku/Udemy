void main(List<String> args) {
 //ternary if, if-else yapısının kısaltılmış halidir.
 //Kullanumu : koşul ? expression1 : expression2;
 //Eğer koşul doğruysa expression1, yanlışsa expression2 çalışır.
 //Bu yapıyı kullanarak, if-else yapısını tek satırda yazabilir

 //Kısa kullanım ile değişkenlerin null değeğrderini kontrol edebiliriz.
 //exoression1 ?? expression2; şeklinde kullanılır.
 //Eğer expression1 null ise expression2 çalışır.

 // Daha çok widgetlerde kullanılır.
 //Örneğin, bir widget'ın görünürlüğünü kontrol etmek için kullanılabilir.
 //Eğer bir widget'ın durumu true ise göster, false ise gizle gibi.
 //Bu yapıyı kullanarak, kodu daha okunabilir ve kısa hale getirebilir
 //ve performansı artırabiliriz.


  int sayi1 = 24;
  num sayi2 = 3;
  // burada sayi1 ve sayi2 değişkenlerini karşılaştırıyoruz
  // eğer sayi1 sayi2'den büyükse, "sayi1 sayi2'den büyüktür." mesajını yazdırıyoruz
  // eğer sayi1 sayi2'den küçükse, "sayi1 sayi2'den küçüktür." mesajını yazdırıyoruz
  // eğer sayi1 ve sayi2 eşitse, "sayi1 sayi2'ye eşittir." mesajını yazdırıyoruz
  // bu işlemi tek satırda yapıyoruz
  sayi1 > sayi2
      ? print("$sayi1 $sayi2'den büyüktür.")
      : sayi1 < sayi2
          ? print("$sayi1 $sayi2'den küçüktür.")
          : print("$sayi1 $sayi2'ye eşittir.");
}