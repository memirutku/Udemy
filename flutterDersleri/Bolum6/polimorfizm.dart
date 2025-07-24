void main(List<String> args) {
  User user1 = User();
  AdminUser user2 = AdminUser();
  NormalUser user3 = NormalUser();
  SadeceOkuyabilenNormalUser user4 = SadeceOkuyabilenNormalUser();

  user2.girisYap(); // bu User sınıfından geliyor.
  user4.girisYap(); // bu User sınıfından geliyor.

  User user5 = AdminUser();
  User user6 = SadeceOkuyabilenNormalUser(); //upcasting yukarı çevirim
  //upcasting ile AdminUser ve SadeceOkuyabilenNormalUser sınıflarını User sınıfı olarak kullanabiliriz.

  List<NormalUser> tumNormalUserlar = [];
  List<AdminUser> tumAdminUserlar = [];
  //bunun sayesinde üsteki yerine şöyle yapabiliriz.
  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3); // hiçbirinde hata çıkmaz
  //tüm bu olaylara upcasting deniyor çünkü extend ettiğimiz için User sınıfının özelliklerini kullanabiliyoruz. Böylelikle bunu user gibi sayabiliyor. ve kullanabiliyoruz.
  //yani listeye sana user türünde bir şey gelecek diyoruz ve useri extend ettiğimiz şeyler user olduğu için günün sonunda User türünde bir şey geliyor.

  Test(user1);
  Test(user2);
  Test(user3);
  Test(user4);
  //4 farklı veri türü var ve hepsini karşılayan tek bir fonksiyon var.
  //böylelikle kod tekrarını önlemiş oluyoruz.
  //bu olaya polymorfizm deniyor. Yani çok biçimlilik.
}
//bu şekilde yaparak diğer alt sınıfları benzer bir yapı altında toplayabiliriz.
//tek bir fonksiyon ile tüm User türündeki nesneleri kullanabiliriz.

void Test(User kullanici) {
  kullanici.girisYap(); // bu User sınıfından geliyor.
  //kullanici.davetEt(); // hata verir çünkü User sınıfında davetEt metodu yok.
  //çünkü bu User türünde bir şey ve davetEt metodu NormalUser sınıfında var.
}

class User {
  String email = " ";
  String password = " ";
  void girisYap() {
    print("Main User giriş yaptı.");
  }
}

class AdminUser extends User {
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
  void adiniSoyle() {
    print("Ben sadece okuyabilen normal bir kullanıcıyım.");
  }

  @override
  void girisYap() {
    print("Sadece okuyabilen normal kullanıcı giriş yaptı.");
  }
}
