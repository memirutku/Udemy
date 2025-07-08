void main(List<String> args) {
  //"mustafa";
  //54;
  //true; //hiçbir anlamı olmasada bu şekilde kod yazılabiliyor dart da bunlara literal denir

  String isim = "Mustafa";
  String soyisim = "Emir";
  var kurs =
      'Dart\'ın kullanımı'; // ters slash ile tırnak işaretini kaçırıyoruz
  int yas = 25;
  bool deger = true;
  print(isim + " " + soyisim); // "Mustafa Emir"
  print(
    "$isim $soyisim",
  ); // "Mustafa Emir" bu şekilde de yazılabilir $ ile verdiğimidiz değişkeni kullanabiliriz
  print(
    "$isim $soyisim $kurs",
  ); // "Mustafa Emir Dart'ın kullanımı" otomatik olarak stringleri birleştirir ve boşluk bırakır.
  //integer boolean double de de oluyor bu $ işareti olayı
  //print("$isim " + yas); // Burada hata verir çünkü yas bir int değişkeni ve string ile birleştirilemez.
  print(
    "$isim $yas",
  ); // "Mustafa 25" burada yas değişkeni ya böyle yazarsın ya da toString() metodunu kullanarak string'e çevirebilirsin
  print(
    "$isim " + yas.toString(),
  ); // "Mustafa 25" burada yas değişkenini string'e çeviriyoruz.
  print(
    "karakter sayısı: ${isim.length}",
  ); // .length gibi şeyleri kullanırken eğer $ kullanıyorsak süslü parantez kullanmalıyız
  print(
    "karakter sayısı: ${isim.length + soyisim.length}",
  ); // gibi gibi ve bu süslü parantez içinde + koyabiliyoruz.

  double en = 10;
  double boy = 12;
  print("Boyu ${boy.toInt()} ve eni ${en.toInt()} olan kişidir"); // .toInt() sonunda parantez kullanmayı unutma
  // ve süslü parantez içinde de .toInt() de de gördüğün gibi parantez kullanabiliyoruz yani sadece .length gibi şeylerde değil
  print("bu kişinin boyu ve eninin çarpımı: ${(boy * en).toInt()}"); // burada da çarpma işlemi yapabiliyoruz
  // ve bu şekilde de string içinde matematik işlemleri yapabiliyoruz
}

//macos da vs code de erkan yakınlaştırmak için cmd + +
//macos da vs code de erkan uzaklaştırmak için cmd + -
