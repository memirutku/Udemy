/*Soru1

CemberDaire isimli bir sınıf oluşturun.Bu sınıfın yarıçap alan kurucusu olmalı. Ayrıca cevre ve alanını hesaplayan metotlar olmalı.(pi sayısı 3.14 olarak alınabilir.)

Soru2
Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin idsi ve not değeri tutulmalı. 100 elemanlı bir listede id ve not değerlerini rastgele olusturarak bu ogrencileri saklayın ve bu ogrencileri yazdıran bir metot yazın.
*/

/*
//Soru 1 ilk versiyonu
void main(List<String> args) {
  var o1 = cemberDaire(11);
  var alan = o1.alanHesapla;
}

class cemberDaire {
  int? yaricap;
  double pi = 3.14;

  cemberDaire(int yaricap) {
    this.yaricap = yaricap;
    cevreHesapla(yaricap);
    alanHesapla(yaricap);
  }

  void cevreHesapla(yaricap) {
    return print(yaricap * pi);
  }

  void alanHesapla(yaricap) {
    return print(yaricap * pi * yaricap);
  }
}
*/

//
/* 1.Soru 2.deneme
void main(List<String> args) {
  var o2 = cemberDaire(4);
  o2.cevreHesapla;
  o2.alanHesapla = 3;
}

class cemberDaire {
  int? _yaricap;
  double? _pi = 3.14;

  cemberDaire(int yaricap) {
    _yaricap = yaricap;
  }

  /*
  void get cevreHesapla {
    return print("cevre ${_yaricap! * _pi!}");
  }
*/
  void get cevreHesapla => print("cevre ${_yaricap! * _pi!}");

  void set alanHesapla(int yaricap) {
    return print(yaricap * yaricap * _pi!);
  }
}
*/
// anladığım olay şu get ve set aynı şey aslında değer verip iş yapacak isen set yapıyorsun değer vermeyip iş yaptıracak isen get yapıyorsun. ikisi de return ediyor çünkü
// normalde privite değişkene gidemiyorsun o yüzden get ve set kullanıyoruz aslında içinde private değişken kullanma okunaklılığın önemi gibi gibi.

// setterlerde void ise return yazabiliyoruz sadece değer alıp değerle bir işlem yapma olayı setterlerde oluyor aslında. return get ile oluyor.
// void ile return yapsan bile get ile return yapman öneriliyor. Daha sağlıklı.
// seter da return print gibi şeylerde kullanırsak ok yoksa normal değer döndüremiyoruz.

// 2. Soru
//Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin idsi ve not değeri tutulmalı. 100 elemanlı bir listede id ve not değerlerini rastgele olusturarak bu ogrencileri saklayın ve bu ogrencileri yazdıran bir metot yazın

import 'dart:math';

void main(List<String> args) {
  //List <int> ogrenciler = List.generate(100, (index) => Random().nextInt(101));
  //List<int> notlar = List.generate(100, (index) => Random().nextInt(101));

  //Rastgele öğrenci id si ve öğrenci notları
  Map<String, int> okulKisi = {};
  for (int i = 0; i < 100; i++) {
    okulKisi["key$i"] = Random().nextInt(100);
  }

  //var ogrenciPrint = ogrenci(kisi.key, kisi.value);
  for (var kisi in okulKisi.entries) {
    ogrenci ogrenciPrint = ogrenci(kisi.key, kisi.value);
    ogrenciPrint.ogrenciYazdir;
  }
}

class ogrenci {
  String? _id;
  int? _not;

  ogrenci(String id, int not) {
    _id = id;
    _not = not;
  }

  void get ogrenciYazdir => print("Öğrencinin adi: $_id Notu: $_not");
}
