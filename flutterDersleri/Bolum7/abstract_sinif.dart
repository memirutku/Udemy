/*
Abstact soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.

Abstract sınıflarda nesen üretilmez abstract sınıflarda normal ve abstract methodlar bulunur.

abstract methodlar alt sınıflarca ovverride edilmek zorundadır.

Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract olarak tanımlanmalıdır.
*/

void main(List<String> args) {

}

class Sekil {

 double alanHesapla(){} // abstract method
 double cevreHesapla(){} // abstract method
 //abstracin içinde aslında bunları bunları yapacaksın bunlardan başka bir şey yapamazsını yapıyoruz aslında onu kullanacak alt classlar için sınır belirliyoruz.
}

class Daire extends Sekil {
  double yaricap;

  Daire(this.yaricap);

  @override
  double alanHesapla() {
    return 3.14 * yaricap * yaricap;
  }

  @override
  double cevreHesapla() {
    return 2 * 3.14 * yaricap;
  }
}