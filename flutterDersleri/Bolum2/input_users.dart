import 'dart:io'; //stdin için bu kütüphanenin import edilmesi lazım.

void main(List<String> args) {
  print(
    "Adınızı giriniz: ",
  ); // ctrl + f5 mac için terminalde run without debugging içi
  String? isim = stdin
      .readLineSync(); // kullanıcıdan veri almak için stdin.readLineSync()kullanıyoruz
  // string olarak algılıyor. 35 de yazsan onu "35" olarak alıcak
  // onun için ise parse kullanacağız. int.parse("35") gibi
  print("Yasınızı giriniz: ");
  int? yas = int.parse(
    stdin.readLineSync()!,
  ); // Buradaki ünlem null olmayacak burası demek.
  print("girilen isim $isim ve girilen yas $yas");
}
