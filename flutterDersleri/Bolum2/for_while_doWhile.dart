void main(List<String> args) {
  // for döngüsü, belirli bir koşul sağlandığı sürece kod bloğunu tekrarlar
  // genellikle sayısal döngülerde kullanılır
  //for döngüsü kaç kere döneceğini bildiğimiz durumlarda kullanılır
  // örnek:
  //ilk yer başlangıç değeri, ikinci yer koşul, üçüncü yer artış miktarı
  for (int i = 0; i < 5; i++) {
    print("For döngüsü: $i");
  }
  List isimListesi = ["Mustafa", "Emir", "Utku"];
  for (String isim in isimListesi) {
    // listelerin içinde ararken in kullanılabilir.
    print("İsim: $isim");
  }

  for (int i = 0; i < isimListesi.length; i++) {
    // elemanlar 0 dan başlar.
    print(
      "İsim: ${isimListesi[i]}",
    ); // i ile listeden eleman alıyoruz bu şekilde de kullanılabilir.
  }

  int sayac = 0;
  while (sayac < 3)
  //bu döngü, sayac 3'ten küçük olduğu sürece çalışır.
  // dikkatli olmalısın sonsuza dek çalışabilir. p yüzden genellikle ++ kullanırız.
  {
    print("Okunan sayac değeri $sayac");
    sayac++;
  }

  //while ile do while arasında ki fark while de önce koşul kontrol edilir, eğer koşul sağlanmazsa döngü hiç çalışmaz.
  //do while da ise önce kod bloğu çalışır, sonra koşul kontrol edilir. Bu yüzden en az bir kez çalışır.
  //do while genellikle kullanıcıdan veri almak için kullanılır.
  int sayac3 = 0;
  do {
    print("Okunan sayac3 degeri $sayac3");
    sayac3++;
  } while (sayac3 < 2); // sayac3 2'den küçük olduğu sürece döngü devam eder.

  //break ve continue komutları döngü kontrolü için kullanılır
  //break, döngüyü tamamen sonlandırır
  //continue, döngünün o anki iterasyonunu atlar ve bir sonraki iterasyona geçer
  for (int i = 0; i < 10; i++) {
    // for da ki i yi sadece for döngüsü içinde kullanabiliriz. değişkeni for döngüsünün dışında kullanamayız.
    if (i == 5) {
      break;
    }
  }
  for (int j = 0; j < 3; j++) {
    if (j == 1) {
      continue; // j=1 olduğunda bu iterasyonu atlar
    }
    print(" j: $j");
  }
  // i=5 olduğunda döngüyü sonlandırır

  distakidongu:
  for (int i = 0; i < 10; i++) {
    //döngülere ad verebiliyoruz ad vedikten sonra : koyuyoruz.
    for (int j = 0; j < 5; j++) {
      // for içinde for kullanabiliriz.
      if (i == 2) {
        print("i: $i, j: $j - break ile sonlandırılıyor");
        break distakidongu; // distakidongu adındaki döngüyü sonlandırır breakdan sonra sonlandırmak istediğimiz döngünün adını yazıyoruz.
      }
      print("i: $i, j: $j");
    }
  }
}
