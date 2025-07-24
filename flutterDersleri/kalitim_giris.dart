//kalıtım
/*Path: kalitim_giris.dart
Kalıtım, bir sınıfın başka bir sınıftan özellikleri ve metotları devralmasını sağlar.
Bu, kodun yeniden kullanılabilirliğini artırır ve sınıflar arasında ilişki kurar.
Kalıtım, bir sınıfın başka bir sınıftan türetilmesiyle gerçekleştirilir.

Kalıtım olmadan da yapabiliriz ama kalıtım ile daha az kod yazarak daha fazla iş yapabiliriz.
kalıtım olmadan daha verimsiz olur. ve daha performanslı olur.
Javadaki çoklu kalıtım gibi bir şey yok. Tekli kalıtım var.

Dart'ta çoklu kalıtım yok ama
//mixin ile çoklu kalıtım yapabiliriz.(önemli olabilir))
Dart'ta kalıtım, extends anahtar kelimesi ile yapılır. Bir sınıf, başka bir sınıfı extends ederek o sınıfın özelliklerini ve metotlarını devralır.
/**
 * KALITIM INHERITANCE : İki adet sınıf düşünelim. Birinin adı Ebeveyn diğerinin adı Çocuk olsun. 
 * Ebeveyn sınıfının özelliklerini anne+baba’nın işlevleri oluşturmaktadır. 
 * Çocuk ise bazı özellikler bakımından anne babaya benzerlik göstermektedir. (saç rengi, göz rengi) 
 * Bunların yanından çocukta anne ve babasında olmayan bazı özelliklerde yer alabilir.  ( Anne baba kısa boylu iken çocuğun uzun olması). 
 * Ebeveyn gibi üst sınıflara süper sınıflar denir.  Bunlardan türetilen alt sınıflara alt sınıflar denir. 

Dart da kalıtım bir sınıfın kendine ait özellikleri başka bir sınıfa aynen aktarması ya da bazı özellikleri diğer sınıflara izin vermesidir.

Extends anahtar kelimesi: bir sınıfa ait özelliklere başka bir sınava miras almak için kullanılır.

Her alt sınıf doğrudan bir tane süper sınıfa sahip olabilir. 
Her alt sınıf süper sınıfın özelliklerini taşır.  
Süper sınıftan alınan bazı özellikler değiştirilebilir. Aynen kullanılmak zorunda değildir. 
Kalıtımın basamakları çok uzun olmamalıdır.  Bu kötü tasarıma neden olur.

Kalıtımın Faydaları
Daha önceden yazılmış kod parçacıkları tekrar tekrar yazılmadan başka sınıflarda kullanılabilir.  
if, else, switch gibi kontrol ifadelerinin oolduğu sınıflar kötü tasarım örnekleridir. Bunun yerine kalıtım tercih edilmelidir.

Method overriding : üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.
 */
*/

//İki yapı için ortak değerler var bunları kalıtım ile yapabiliriz.
/*

void main(List<String> args) {}


class NormalUser {
  String email = " ";
  String password = " ";
  void girisYap() {print("Normal user giriş yaptı.");
  }
  void davetEt() {
      print("Kullanıcı davet edildi.");
    }
}


class AdminUser {
String email = " ";
  String password = " ";
  void girisYap() {
    print("Admin user giriş yaptı.");
  }
void toplamKullaniciSayisiniGoster() {
    print("Toplam kullanıcı sayısı: 100");
  }
}
*/
//İki yapı için ortak değerler var bunları kalıtım ile yapabiliriz.

void main(List<String> args) {
  AdminUser admin = AdminUser();
  admin.girisYap(); // bu User sınıfından geliyor.
  SadeceOkuyabilenNormalUser user = SadeceOkuyabilenNormalUser();
  user.girisYap(); // bu User sınıfından geliyor.
}

class User {
  String email = " ";
  String password = " ";

  void girisYap() {
    print("Main User giriş yaptı.");
  }
}

class AdminUser extends User {
  //böylelikle userin içinde bulunanları da burada kullanabiliriz.
  void toplamKullaniciSayisiniGoster() {
    print("Toplam kullanıcı sayısı: 100");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Kullanıcı davet edildi.");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  //bu hem NormalUser hem de User sınıfından özellikleri alır.
  void adiniSoyle() {
    print("Ben sadece okuyabilen normal bir kullanıcıyım.");
  }
  @override
  void girisYap(){
      print("Sadece okuyabilen normal kullanıcı giriş yaptı.");
    } //ovver ride ile üst sınıftaki metodu kendine göre değiştirebiliyoruz.

    //girisyap metodunu yine de Userden aldığı için perfomanslı olur.
}
