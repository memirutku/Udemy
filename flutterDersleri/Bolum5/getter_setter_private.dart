/**
 * private değişken ve fonksiyonlar: Bir sınıftaki değişken ve metotları bazen erişime kapatmak isteyebiliriz. Bu durumlarda _ işareti ile bunları saklarız.
 *
 * getter metotlar: sınıf değişkenlerini okumak için kullanılan özel fonksiyonlardır.
 * Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılmış değişkenlerin
 * gerekli olduğunda okunmasını sağlamaktır.
 *
 * setter metotlar: sınıf değişkenlerine veri atamak için kullanılır. Bu metotların amacı özellikle private yani dış dünyanun erişimine kapatılan değişkenlere veri atamaktır, ayrıca veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması için kullanılır.
 */

import "veritabani_islemleri.dart"; // diğer dosyadan sınıfı kullanabilmek için import ediyoruz.

void main(List<String> args) {
  VeritabaniIslemleri veritabani =
      VeritabaniIslemleri(); //Sadece  isimlendirilmiş kurucu method yaparsan hata verir. normal kurucu methodu da yapman lazım.
  VeritabaniIslemleri veritabaniIslemleri =
      VeritabaniIslemleri.loginWithNameAndPassword(
        "admin",
        123456,
      ); // Doğru kullanıcı adı ve şifre ile giriş yapılıyor.
  veritabani.baglan();
  veritabaniIslemleri; // Doğru kullanıcı adı ve şifre ile giriş yapılıyor.
  // _ yaptıktan sonra bu değişkenlere erişemeyiz.
  // print(veritabani._kullaniciAdi); // hata verir çünkü _ ile tanımladık ve private değişkenler sınıf dışından erişilemez.
  //veritabani._internetVarMi(); // hata verir çünkü _ ile tanımladık ve private fonksiyonlar sınıf dışından erişilemez.
}
