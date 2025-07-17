/*1- iki notu girilen öprencinin oratalamasını bularak sonucu gösteren algo
2- Fiyatı girelen ürüne %18 kdv ekleyerek son fiyatı hesaplayan algo.*/
import 'dart:io';

void main(List<String> args) {
  /* 1-
  print("İlk ders notunu giriniz: ");
  int ilkDers = int.parse(stdin.readLineSync()!);

  print("ikinci ders notunu giriniz: ");
  int ikiDers = int.parse(stdin.readLineSync()!);

  var ort = (ilkDers + ikiDers) / 2;
  //print("Ortalama: $ort");

  if (ort > 49) {
    print("Öğrenci geçmiştir ortalaması: $ort");
  } else {
    print("Öğrenci kalmıştır ortalaması: $ort");
  }

*/

  print("Ürünün fiyatını giriniz:");
  int? fiyat = int.parse(
    stdin.readLineSync()!
  ); // burada aslına kullanıcı null giremez (!) ve null olabilir (?) ifadelerini aynı anda kullanıyoruz nedeni aslında boşluk vererek bir girilen yapmış oluyoruz. ama boşluk da null sayıldığı için ünlem koyuyuruz.
  fiyat = fiyat + (fiyat * 18 / 100).toInt();
  print("Ödemeniz gereken fiyat: $fiyat");
}
