/**
 * KURUCU METHODLAR - CONSTRUCTORS
 * Bir sınıftan nesne ürettiğimizde tetiklenen yapılardır. Bu yapıları kullanarak nesnelerimizi veri göndererek oluşturabilir, nesneleri kullanmadan önce gerekli atamaları ve ayarları yapabiliriz.

 * Farklı türde kurucu olusturabiliriz.
 *  1-Default : Sınıf adının yanına () dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur.
 *    Ogrenci emre=new Ogrenci() dediğimizde aslında default kurucu çalışır.
 *    Default constructor sınıfın içinde eğer elle yazıp belirtmesek bile olan Ogrenci(){} şeklinde tanımlı boş bir methoddur.
 *    Istersek bunu çeşitli durumlar için kullanabiliriz. Bu method her nesne üretiminde ilk olarak çalışan methoddur.
 *    Kurucu methodların geri dönüş tipi olmaz.

 *  2- Parametreli Kurucu Method : Aslında default constructorın parametre almış haline denir.
 *    Ogrenci emre=new Ogrenci("emre");
 *
 *  Dart dilinde method overloading olmadığı için sadece ya default yapıcı ya da parametreli yapıcı olmalıdır.

 *  3- Named (Isimlendirilmiş) : Sınıf içerisinde
     SinifAdi.methodAdi(){
     buraya kodlar gelir.
     }
    //Istediniz sayıda isimlendirilmiş kurucu oluşturabilirsiniz.
 */

void main(List<String> args) {
  /*
  Araba honda = Araba(); // Araba sınıfından honda adında bir nesne oluşturduk.
  honda.modelYili =
      2020; // honda nesnesinin modelYili değişkenine değer atadık.
  honda.marka = "Honda";
  honda.otomatikMi = true;
  honda.bilgileriSoyle(); // honda nesnesinin bilgileriSoyle methodunu çağırdık.
*/

  // Bu şekilde de yapabiliriz.
  // var honda = Araba(); // var ile de yapabiliriz.
  // dynamic honda = Araba(); // dynamic ile de yapabiliriz ama önerilmez.
  // honda.modelYili = 2020; // honda nesnesinin modelYili değişkenine değer atadık.
  // honda.marka = "Honda";
  // honda.otomatikMi = true;
  // honda.bilgileriSoyle(); // honda nesnesinin bilgileriSoyle methodunu çağırdık.

  //************************************* */
  //üsteki gibi tek tek yapmaktansa kurucu metot kullanarak da yapabiliriz.
  // Kurucu metot, sınıfın bir örneği oluşturulduğunda otomatik olarak çağrılır.
  Araba toyota = Araba(
    2021,
    "Toyota",
    false,
  ); // kurucu metot il kurucu metot içinde ki nesneleri dolduruyoruz.
  // Bu şekilde de kurucu metot çağrılır.
  toyota
      .bilgileriSoyle(); // toyota nesnesinin bilgileriSoyle methodunu çağırdık.
}

class Araba {
  // Sınıf adından sonra direkt süslü parantez açılır.
  int? modelYili; // Değişkenler sınıfın içinde tanımlanır.
  String? marka;
  bool? otomatikMi;

  /*
  // Kurucu metot (Constructor) sınıfın bir örneği oluşturulduğunda otomatik olarak çağrılır.
  Araba(){
    print("Araba sınıfından bir nesne oluşturuldu.");
  }
  // biz bunu yazmasak da dart otomatik olarak bir kurucu metot oluşturur.
  // Kurucu metot, sınıfın bir örneği oluşturulduğunda otomatik olarak çağrılır.
  // Araba honda = Araba(); // Bu şekilde de kurucu metot çağrılır. aslında

*/

  /*
  // Parametreli kurucu metot
  Araba(int? modelYili, String? marka, bool? otomatikMi) {
    //ilk olarak bunlar buraya geliyor ama buradan gitmiyor bir yere.

    // bu yüzden burada this ile sınıfın değişkenlerine erişiyoruz. ve onlara atıyoruz
    this.modelYili = modelYili; // this ile sınıfın değişkenlerine erişiyoruz.
    // this.modelYili ile sınıfın modelYili değişkenine erişiyoruz. eğer this yazmazsak bu değişkenler local değişken olur ve sınıfın değişkenlerine erişemeyiz.
    this.marka = marka;
    this.otomatikMi = otomatikMi;

    //Ya da this yerine direkt değişken adını da değiştirip yazabiliriz.
    //marka = arabaMarka; // bu şekilde this kullanmamıza gerek kalmaz.
    //otomatikMi = otomatikMiDurumu;
    //modelYili = modelYiliAraba;
    print("Araba sınıfından bir nesne oluşturuldu: $marka $modelYili");
  }
*/
  //üstekinden öğrendiğimizin sadeleştirikmiş hali
  // bu addan bir tane yapabiliriz ama isimlendirilmiş kurucu metotlar ile birden fazla yapabiliriz.
  Araba(this.modelYili, this.marka, this.otomatikMi) {
    // burada ki this direkt sınıf değişkeni
    // Bu şekilde de kurucu metot tanımlayabiliriz. bu şekilde daha kısa
    print("Araba sınıfından bir nesne oluşturuldu: $marka $modelYili");
  }
  void bilgileriSoyle() {
    // Methodlar sınıfın içinde tanımlanır.
    print(
      "Araba Markası: $marka, Model Yılı: $modelYili, Otomatik Mi: $otomatikMi", // burada kullanılanlar sınıfın içinde tanımlanan değişkenlerdir. kuurucu metot içinde olan değil.
    );
  }

  // kurucu method bir nesne ürtetiğimizde tetiklenen ilk methoddur.
  // İsimlendirilmiş kurucu metot
  //fonksiyon gibi düşünebiliriz.
  Araba.sadeceMarka(this.marka) {
    // Bu şekilde de isimlendirilmiş kurucu metot tanımlayabiliriz.
    print("Sadece marka bilgisi alındı: $marka");
  }
  void yasHesapla() {
    if (modelYili == null) {
      print("Model yılı bilgisi yok.");
      return; // Eğer modelYili null ise işlemi sonlandırır.
    } else {
      print(
        "Arabanın yaşı ${2021 - modelYili!}",
      ); // ! ile null kontrolü yapıyoruz.}
    }
  }
}
